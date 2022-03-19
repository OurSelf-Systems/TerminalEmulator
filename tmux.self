 '0.1.0'
 '
Copyright 2022 Russell Allen
LICENSE file for license information.
'
[ 
"prefileIn" self] value


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         tmux = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'tmux' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'copyright' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             bootstrap remove: 'tree' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'tmux' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules tmux.

CopyDowns:
globals modules init. copy 
SlotsToOmit: copyright directory fileInTimeString myComment postFileIn revision subpartNames tree.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'tmux' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (\'
Copyright 2022 Russell Allen
LICENSE file for license information.
\')\x7fVisibility: public'
        
         copyright <- '
Copyright 2022 Russell Allen
LICENSE file for license information.
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'tmux' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'tmux' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'tmux' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'tmux' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'tmux' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: InitializeToExpression: (\'0.1.0\')\x7fVisibility: public'
        
         revision <- '0.1.0'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'tmux' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'tmux' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: InitializeToExpression: (\'self-tmux\')'
        
         tree <- 'self-tmux'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: platform\x7fCategory: external programs\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         tmux = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux.
'.
            | ) .
        } | ) 



 '-- Side effects'

 globals modules tmux postFileIn
