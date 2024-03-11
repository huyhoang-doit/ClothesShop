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
public class PaymentDTO {
    private int paymentID;
    private String paymentMethod;

    public PaymentDTO() {
    }
    
    

    public PaymentDTO(int paymentID, String paymentMethod) {
        this.paymentID = paymentID;
        this.paymentMethod = paymentMethod;
    }

    public int getPaymentID() {
        return paymentID;
    }

    public void setPaymentID(int paymentID) {
        this.paymentID = paymentID;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }
    
    
}
