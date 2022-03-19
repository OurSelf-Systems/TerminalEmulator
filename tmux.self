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
             {} = 'Comment: I give access to the local tmux
server (assuming one is running).\x7fModuleInfo: Creator: globals tmux.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         server = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'server' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux server.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         session = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux session.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         contents = ( |
            | server tmuxCommand: 'capture-pane -t self -p' IfFail: 0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         name.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         namespace* = bootstrap stub -> 'globals' -> 'tmux' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         sessions = ( |
            | server listSessions).
        } | ) 



 '-- Side effects'

 globals modules tmux postFileIn
