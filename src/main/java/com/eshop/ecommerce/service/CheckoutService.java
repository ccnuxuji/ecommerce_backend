package com.eshop.ecommerce.service;

import com.eshop.ecommerce.dto.Purchase;
import com.eshop.ecommerce.dto.PurchaseResponse;

public interface CheckoutService {

    PurchaseResponse placeOrder(Purchase purchase);
}
