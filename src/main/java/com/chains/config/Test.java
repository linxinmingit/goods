package com.chains.config;

import org.apache.shiro.crypto.hash.Md5Hash;

public class Test {

    public static void main(String[] args) {
        Md5Hash hash = new Md5Hash("123","admin", 2);
        System.out.println(hash.toString());
    }

}
