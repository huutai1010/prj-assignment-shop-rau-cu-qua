package sample.shopping;

import java.util.Map;
import java.util.HashMap;

public class Cart {
    private Map<String, ProductDTO> cart;
    public Cart() {
        
        
    }
    
    public Cart(Map<String, ProductDTO> cart) {
        
    }
    
    public Map<String, ProductDTO> getCart() {
        return cart;
    }
    
    public void setCart(Map<String, ProductDTO> cart) {
        this.cart = cart;
    }
    
    public boolean add(ProductDTO product) {
        boolean check = false;
        if (this.cart == null) {
            this.cart = new HashMap<>();
        }
        if (this.cart.containsKey(product.getProductID())) {
            int currentQuantity = this.cart.get(product.getProductID()).getQuantity();
            product.setQuantity(currentQuantity + 1);
        }
        this.cart.put(product.getProductID(), product);
        check = true;
        return check;
    }
    
    
    public boolean remove(String productID) {
        boolean check = false;
        if (this.cart != null) {
            if (this.cart.containsKey(productID)) {
                this.cart.remove(productID);
            }
        }
        return check;
    }
    
    public boolean edit(String productID, ProductDTO product) {
        boolean check = false;
        if (this.cart != null) {
            if (this.cart.containsKey(productID)) {
                this.cart.replace(productID, product);
            }
        }
        return check;
    } 
}
