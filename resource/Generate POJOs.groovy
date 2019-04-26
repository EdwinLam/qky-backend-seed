import com.intellij.database.model.DasTable
import com.intellij.database.model.ObjectKind
import com.intellij.database.util.Case
import com.intellij.database.util.DasUtil


packageName = "cn.qky.classgroup.entity;"
typeMapping = [
        (~/(?i)bigint/)                      : "Long",
        (~/(?i)tinyint|smallint|mediumint|int|integer/)                      : "Integer",
        (~/(?i)float|double|decimal|real/): "Double",
        (~/(?i)bool|boolean/)             : "Boolean",
        (~/(?i)datetime|timestamp/)       : "java.util.Date",
        (~/(?i)date/)                     : "java.sql.Date",
        (~/(?i)time/)                     : "java.sql.Time",
        (~/(?i)/)                         : "String"
]

FILES.chooseDirectoryAndSave("Choose directory", "Choose where to store generated files") { dir ->
  SELECTION.filter { it instanceof DasTable && it.getKind() == ObjectKind.TABLE }.each { generate(it, dir) }
}

def generate(table, dir) {
  def className = javaName(table.getName(), true)
  def fields = calcFields(table)
  new File(dir, className + ".java").withPrintWriter("utf-8") { out -> generate(out, table, className, fields) }
}

def generate(out, table, className, fields) {
  def tableName = table.getName()
  def tableComment = table.getComment()
  def ignoreColumn = ["id","creator","createDate","lastModifier","lastModDate","status"]
  out.println "package $packageName"
  out.println ""
  out.println "import lombok.Data;"
  out.println "import javax.persistence.*;"
  out.println "import io.swagger.annotations.ApiModelProperty;"
  out.println ""
  out.println "/**"
  out.println " * @Author: Edwin"
  out.println " * @Description: $tableComment"
  out.println " */"
  out.println "@Data"
  out.println "@Entity"
  out.println "@Table(name = \"$tableName\")"
  out.println "public class $className extends BaseEntity {"
  out.println ""
  out.println "\tprivate static final long serialVersionUID = 1L;"
  fields.each() {
    if(ignoreColumn.any{item->it.colum==item})
      return
    if (it.annos != "") out.println "  ${it.annos}"
    out.println "\t@Column"
    if(it.comment!=null&&it.comment != "") out.println "\t@ApiModelProperty(value = \"${it.comment}\")"
    out.println "\tprivate ${it.type} ${it.name};"
    out.println ""
  }
  out.println "}"
}

def calcFields(table) {
  DasUtil.getColumns(table).reduce([]) { fields, col ->
    def spec = Case.LOWER.apply(col.getDataType().getSpecification())
    def typeStr = typeMapping.find { p, t -> p.matcher(spec).find() }.value
    fields += [[
                       name : col.getName(),
                       colum: col.getName(),
                       type : typeStr,
                       comment: col.getComment(),
                       annos: ""]]
  }
}

def javaName(str, capitalize) {
  def s = str.split(/(?<=[^\p{IsLetter}])/).collect { Case.LOWER.apply(it).capitalize() }
          .join("").replaceAll(/[^\p{javaJavaIdentifierPart}]/, "_").replaceAll(/_/, "")
  capitalize || s.length() == 1 ? s : Case.LOWER.apply(s[0]) + s[1..-1]
}
