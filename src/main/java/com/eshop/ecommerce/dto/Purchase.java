package com.eshop.ecommerce.dto;

import com.eshop.ecommerce.entity.Address;
import com.eshop.ecommerce.entity.Customer;
import com.eshop.ecommerce.entity.Order;
import com.eshop.ecommerce.entity.OrderItem;
import lombok.Data;

import java.util.Set;

@Data
public class Purchase {

    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;

}
