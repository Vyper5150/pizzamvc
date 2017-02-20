package pizzamvc;

import java.util.Arrays;

/**
 * A class that represents a single pizza order.
 *
 * @author Rob Shea
 */
public class PizzaOrder {

    private String email;
    private String size;
    private String[] toppings;
    private String crust;

    public PizzaOrder() {
        email = "";
        size = "";
        toppings = null;
        crust ="";
    }

    public PizzaOrder(String email, String size, String[] toppings) {
        this.email = email;
        this.size = size;
        this.toppings = toppings;
    }

    public String[] getToppings() {
        return toppings;
    }

    public void setToppings(String[] toppings) {
        this.toppings = toppings;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }
    
    public String getCrust(){
        return crust;
    }
    
    public void setCrust(String crust){
        this.crust = crust;
    }

    @Override
    public String toString() {
        return "PizzaOrder{" + "email=" + email + ", size=" + size
                + ", toppings=" + Arrays.toString(toppings) + '}';
    }
}
