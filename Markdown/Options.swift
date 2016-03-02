//===--- Options.swift ----------------------------------------------------===//
//
//Copyright (c) 2016 Daniel Leping (dileping)
//
//This file is part of Markdown.
//
//Swift Express is free software: you can redistribute it and/or modify
//it under the terms of the GNU Lesser General Public License as published by
//the Free Software Foundation, either version 3 of the License, or
//(at your option) any later version.
//
//Swift Express is distributed in the hope that it will be useful,
//but WITHOUT ANY WARRANTY; without even the implied warranty of
//MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//GNU Lesser General Public License for more details.
//
//You should have received a copy of the GNU Lesser General Public License
//along with Swift Express.  If not, see <http://www.gnu.org/licenses/>.
//
//===----------------------------------------------------------------------===//

import Foundation
import CDiscount

public struct Options : OptionSetType {
    public let rawValue: UInt32
    
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
    
    static let None                     = Options(rawValue: 0)
    static let NoLinks                  = Options(rawValue: UInt32(MKD_NOLINKS))
    static let NoImage                  = Options(rawValue: UInt32(MKD_NOIMAGE))
    static let NoPants                  = Options(rawValue: UInt32(MKD_NOPANTS))
    static let NoHTML                   = Options(rawValue: UInt32(MKD_NOHTML))
    static let Strict                   = Options(rawValue: UInt32(MKD_STRICT))
    static let TagText                  = Options(rawValue: UInt32(MKD_TAGTEXT))
    
    static let NoExt                    = Options(rawValue: UInt32(MKD_NOEXT))
    static let CData                    = Options(rawValue: UInt32(MKD_CDATA))
    static let NoSuperscript            = Options(rawValue: UInt32(MKD_NOSUPERSCRIPT))
    static let NoRelaxed                = Options(rawValue: UInt32(MKD_NORELAXED))
    static let NoTables                 = Options(rawValue: UInt32(MKD_NOTABLES))
    static let NoStrikethrough          = Options(rawValue: UInt32(MKD_NOSTRIKETHROUGH))
    static let TableOfContents          = Options(rawValue: UInt32(MKD_TOC))
    static let Compat1                  = Options(rawValue: UInt32(MKD_1_COMPAT))
    static let Autolink                 = Options(rawValue: UInt32(MKD_AUTOLINK))
    static let Safelink                 = Options(rawValue: UInt32(MKD_SAFELINK))
    static let NoHeader                 = Options(rawValue: UInt32(MKD_NOHEADER))
    static let TabStop                  = Options(rawValue: UInt32(MKD_TABSTOP))
    static let NoDivQuote               = Options(rawValue: UInt32(MKD_NODIVQUOTE))
    static let NoAlphaList              = Options(rawValue: UInt32(MKD_NOALPHALIST))
    static let NoDefList                = Options(rawValue: UInt32(MKD_NODLIST))
    static let ExtraFootnote            = Options(rawValue: UInt32(MKD_EXTRA_FOOTNOTE))
    
    //    Not in this version
    //    static let NoStyle                = Options(rawValue: UInt32(MKD_NOSTYLE))
    //    static let NoDiscountDefList      = Options(rawValue: UInt32(MKD_NODLDISCOUNT))
    //    static let ExtraDefList           = Options(rawValue: UInt32(MKD_DLEXTRA))
    //    static let FencedCode             = Options(rawValue: UInt32(MKD_FENCEDCODE))
    //    static let IdAnchor               = Options(rawValue: UInt32(MKD_IDANCHOR))
    //    static let GithubTags             = Options(rawValue: UInt32(MKD_GITHUBTAGS))
    //    static let UrlEncodedAnchor       = Options(rawValue: UInt32(MKD_URLENCODEDANCHOR))
    
    static let Embed:Options            = [.NoLinks, .NoImage, .TagText]
}