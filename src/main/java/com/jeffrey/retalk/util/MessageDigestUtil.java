package com.jeffrey.retalk.util;

import java.security.MessageDigest;

/**
 * 摘要处理
 */
public class MessageDigestUtil {

	public static String bytes2hexString(byte[] b)
	{
		StringBuffer result = new StringBuffer();
		for (int i = 0; i < b.length; i++ )
		{
			String hex = Integer.toHexString(b[i] & 0xFF);
			if (hex.length() == 1)
			{
				hex = '0' + hex;
			}
			result.append(hex);
		}
		return result.toString().toLowerCase();

	}

	public static String encode(String origin, String algorithm)
	{
		String result = null;
		try
		{
			MessageDigest md = MessageDigest.getInstance(algorithm);
			result = bytes2hexString(md.digest(origin.getBytes("UTF-8")));
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}
}