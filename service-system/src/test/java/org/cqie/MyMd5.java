package org.cqie;

import org.cqie.common.utils.MD5;

import java.util.Scanner;

public class MyMd5 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String pwd = sc.next();
        String encrypt = MD5.encrypt(pwd);
        System.out.println(encrypt);
    }
}
