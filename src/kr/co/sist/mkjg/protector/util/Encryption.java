package kr.co.sist.mkjg.protector.util;

import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.RSAPublicKeySpec;

import javax.crypto.Cipher;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

public class Encryption {
	public static String RSA_WEB_KEY = "_RSA_WEB_Key_"; // 개인키 session key
	public static String RSA_INSTANCE = "RSA"; 			// rsa transformation
	private Encryption() {};
	
	public static PrivateKey changeRSA(Model m) {
		KeyPairGenerator generator=null;
		KeyPair keyPair = null;//generator.genKeyPair();
		KeyFactory keyFactory = null;//KeyFactory.getInstance(Encryption.RSA_INSTANCE);
		PublicKey publicKey = null;//keyPair.getPublic();
		PrivateKey privateKey = null;//keyPair.getPrivate();
	        try {
	        	generator = KeyPairGenerator.getInstance(Encryption.RSA_INSTANCE);
	        	generator.initialize(1024);
	        	keyPair = generator.genKeyPair();
	        	keyFactory = KeyFactory.getInstance(Encryption.RSA_INSTANCE);
	        	publicKey = keyPair.getPublic();
	        	privateKey = keyPair.getPrivate();
	            generator = KeyPairGenerator.getInstance(Encryption.RSA_INSTANCE);
	            generator.initialize(1024);
	 
	            RSAPublicKeySpec publicSpec = (RSAPublicKeySpec) keyFactory.getKeySpec(publicKey, RSAPublicKeySpec.class);
	            String publicKeyModulus = publicSpec.getModulus().toString(16);
	            String publicKeyExponent = publicSpec.getPublicExponent().toString(16);
	            m.addAttribute("RSAModulus", publicKeyModulus); 	// rsa modulus 를 request 에 추가
	            m.addAttribute("RSAExponent", publicKeyExponent); // rsa exponent 를 request 에 추가
	        } catch (Exception e) {
	            e.printStackTrace();
	        }//end catch
	        return privateKey;
	}//RSA
	
	public static String decryptRsa(PrivateKey privateKey, String securedValue) throws Exception {
		Cipher cipher = Cipher.getInstance(Encryption.RSA_INSTANCE);
		byte[] encryptedBytes = hexToByteArray(securedValue);
		cipher.init(Cipher.DECRYPT_MODE, privateKey);
		byte[] decryptedBytes = cipher.doFinal(encryptedBytes);
		String decryptedValue = new String(decryptedBytes, "utf-8"); // 문자 인코딩 주의.
		return decryptedValue;
	}//decryptRsa
	
	private static byte[] hexToByteArray(String hex) {
        if (hex == null || hex.length() % 2 != 0) { return new byte[] {}; }
 
        byte[] bytes = new byte[hex.length() / 2];
        for (int i = 0; i < hex.length(); i += 2) {
            byte value = (byte) Integer.parseInt(hex.substring(i, i + 2), 16);
            bytes[(int) Math.floor(i / 2)] = value;
        }
        return bytes;
    }//hexToByteArray
	
	public static String changeSHA512(String plainText)  {
		StringBuilder cipherText= new StringBuilder();
		//1.사용할 알고리즘 선택
		MessageDigest md=null;
		try {
			md = MessageDigest.getInstance("SHA-512");
			//2.문자열을 알고리즘을 사용하여 변환
			md.update(plainText.getBytes());
			//3.변환된 값을 받는다.
			byte[] b = md.digest();
			//4.사람이 알아볼 수 있는 문자여로 변경
			/*	
				Base64 base =new Base64();
				String temp = new String(base.encode(b));
				System.out.println("Base64 : "+temp);
			 */
			for(int i = 0 ; i < b.length;i++) {
				cipherText.append( Integer.toString((b[i]&0xFF)+0x100,16).substring(1) );
			}//end for
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//end catch
		return cipherText.toString();
	}//changeSHA512

}//end if
