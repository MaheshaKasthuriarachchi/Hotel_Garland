package pojo;
// Generated May 17, 2020 5:48:09 PM by Hibernate Tools 4.3.1



/**
 * OrderFood generated by hbm2java
 */
public class OrderFood  implements java.io.Serializable {


     private Integer ofid;
     private int orderId;
     private int foodId;
     private int qty;

    public OrderFood() {
    }

    public OrderFood(int orderId, int foodId, int qty) {
       this.orderId = orderId;
       this.foodId = foodId;
       this.qty = qty;
    }
   
    public Integer getOfid() {
        return this.ofid;
    }
    
    public void setOfid(Integer ofid) {
        this.ofid = ofid;
    }
    public int getOrderId() {
        return this.orderId;
    }
    
    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }
    public int getFoodId() {
        return this.foodId;
    }
    
    public void setFoodId(int foodId) {
        this.foodId = foodId;
    }
    public int getQty() {
        return this.qty;
    }
    
    public void setQty(int qty) {
        this.qty = qty;
    }




}


