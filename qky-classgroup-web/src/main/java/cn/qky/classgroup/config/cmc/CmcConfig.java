package cn.qky.classgroup.config.cmc;


import cn.qky.classgroup.utils.AESUtil;
import cn.qky.classgroup.utils.EncryptUtil;
import org.jasypt.encryption.StringEncryptor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.io.StringReader;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

/**
 * @Author: Edwin
 * @Description:
 */
@Configuration
public class CmcConfig {
    @Value("${config}")
    private byte[] data;

    @Bean("cmc")
    public Map<String, String> initCmcConfig() throws Exception {
        Map<String, String> cmcConfig;
        String originStr;
        if (EncryptUtil.isEncrypt(data)) {
            byte[] pureData = new byte[data.length - 2];
            System.arraycopy(data, 2, pureData, 0, data.length - 2);
            originStr = AESUtil.aesDecrypt(new String(pureData), EncryptUtil.encryptKey);
            Properties pt = new Properties();
            pt.load(new StringReader(originStr));

        } else {
            originStr = new String(data);
        }
        Properties pt = new Properties();
        pt.load(new StringReader(originStr));
        cmcConfig = new HashMap<String, String>((Map) pt);
        return cmcConfig;
    }

    @Bean("jasyptStringEncryptor")
    public StringEncryptor stringEncryptor() {
        return new DefaultEncryptor();
    }
}
