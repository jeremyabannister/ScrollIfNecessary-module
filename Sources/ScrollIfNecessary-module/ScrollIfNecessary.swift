//
//  ScrollIfNecessary.swift
//  
//
//  Created by Jeremy Bannister on 4/28/23.
//

///
@_exported import SwiftUI


///
@available(iOS 16.0, macOS 13.0, watchOS 9, tvOS 16, *)
public func ScrollIfNecessary
    (along axes: Axis.Set,
     showsIndicators: Bool = false,
     content: @escaping ()->some View)
-> some View {
    
    ///
    ViewThatFits {
        content()
        
        ScrollView(axes, showsIndicators: showsIndicators) {
            content()
                .padding(2)
        }
    }
}
