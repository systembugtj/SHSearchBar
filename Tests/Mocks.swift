//
//  Mocks.swift
//  SHSearchBar
//
//  Created by Stefan Herold on 21/08/2016.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import UIKit

func nonDefaultSearchbarConfig() -> SHSearchBarConfig {
    var config = SHSearchBarConfig()
    config.rasterSize = 15.0
    config.animationDuration = 10.0
    config.cancelButtonTextColor = UIColor.orange
    config.cancelButtonTitle = "foo bar"
    config.textAttributes = [NSForegroundColorAttributeName:UIColor.brown, NSBackgroundColorAttributeName:UIColor.gray]
    return config
}

class SHSearchBarMock: SHSearchBar {
    var callCountUpdateUI = 0
    override func updateUI() {
        super.updateUI()
        callCountUpdateUI += 1
    }

    var callCountSetCancelButtonVisibility = 0
    override func setCancelButtonVisibility(_ makeVisible: Bool) {
        super.setCancelButtonVisibility(makeVisible)
        callCountSetCancelButtonVisibility += 1
    }
}

class SearchBarConcreteDelegate: NSObject, SHSearchBarDelegate {
    var hasCalledTextDidChange = false
    func searchBar(_ searchBar: SHSearchBar, textDidChange text: String) {
        hasCalledTextDidChange = true
    }
}

class SearchBarAlwaysFalseDelegate: NSObject, SHSearchBarDelegate {
    var hasTextDidChangeBeenCalled: Bool = false

    // UITextField Pendants
    @objc func searchBarShouldBeginEditing(_ searchBar: SHSearchBar) -> Bool {
        return false
    }
    @objc func searchBarShouldEndEditing(_ searchBar: SHSearchBar) -> Bool {
        return false
    }
    @objc func searchBar(_ searchBar: SHSearchBar, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return false
    }
    @objc func searchBarShouldClear(_ searchBar: SHSearchBar) -> Bool {
        return false
    }
    @objc func searchBarShouldReturn(_ searchBar: SHSearchBar) -> Bool {
        return false
    }
    @objc func searchBar(_ searchBar: SHSearchBar, textDidChange text: String) {
        hasTextDidChangeBeenCalled = true
    }
}

class SearchBarAlwaysTrueDelegate: NSObject, SHSearchBarDelegate {
    var hasTextDidChangeBeenCalled: Bool = false

    // UITextField Pendants
    @objc func searchBarShouldBeginEditing(_ searchBar: SHSearchBar) -> Bool {
        return true
    }
    @objc func searchBarShouldEndEditing(_ searchBar: SHSearchBar) -> Bool {
        return true
    }
    @objc func searchBar(_ searchBar: SHSearchBar, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }
    @objc func searchBarShouldClear(_ searchBar: SHSearchBar) -> Bool {
        return true
    }
    @objc func searchBarShouldReturn(_ searchBar: SHSearchBar) -> Bool {
        return true
    }
    @objc func searchBar(_ searchBar: SHSearchBar, textDidChange text: String) {
        hasTextDidChangeBeenCalled = true
    }
}
