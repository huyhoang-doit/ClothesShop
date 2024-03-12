/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clothingstore.model;

/**
 *
 * @author lvhho
 */
public class WalletDTO {
    private int walletID;
    private String userName;
    private double balance;

    public WalletDTO() {
    }

    
    
    public WalletDTO(int walletID, String userName, double balance) {
        this.walletID = walletID;
        this.userName = userName;
        this.balance = balance;
    }

    public int getWalletID() {
        return walletID;
    }

    public void setWalletID(int walletID) {
        this.walletID = walletID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }
    
    
}
