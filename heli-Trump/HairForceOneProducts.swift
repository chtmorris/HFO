//
//  HairForceOneProducts.swift
//  heli-Trump
//
//  Created by Charlie Morris on 09/12/2015.
//  Copyright © 2015 chtmorris. All rights reserved.
//

import Foundation

public enum HairForceOneProducts {
    
    private static let Prefix = "com.chtmorris.hairforceone."
    
    /// MARK: - Supported Product Identifiers
    public static let Donald = Prefix + "ronaldbump"
    public static let Ben = Prefix + "cenbarson"
    
    // All of the products assembled into a set of product identifiers.
    private static let productIdentifiers: Set<ProductIdentifier> = [HairForceOneProducts.Donald,
                                                                    HairForceOneProducts.Ben]
    
    /// Static instance of IAPHelper that for rage products.
    public static let store = IAPHelper(productIdentifiers: HairForceOneProducts.productIdentifiers)
}

/// Return the resourcename for the product identifier.
func resourceNameForProductIdentifier(productIdentifier: String) -> String? {
    return productIdentifier.componentsSeparatedByString(".").last
}
