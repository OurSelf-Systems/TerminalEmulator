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
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         server = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'server' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux server.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'server' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         newSession = ( |
             n.
            | 
            n: (random integer: 2 power: 64) hexPrintString.
            tmuxCommand: 'new-session -s ', n IfFail: [|:e| error: e].
            session copy name: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'server' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         tmuxCommand: c IfFail: fb = ( |
             command.
             n.
             out.
            | 
            n: (random integer: 2 power: 64) hexPrintString.
            " This looks overly complicated but is needed, otherwise tmux writing to the Self console
              sends a SIGHUP and breaks Self
            "
            command: '(cat /dev/null | nohup tmux -C ', c, ' 2>&1 1>/tmp/', n, '; cat /tmp/', n, ') &>/dev/mull'.
            out: os outputOfCommand: command IfFail: [|:e| ^ fb value: e].
            os unlink: '/tmp/', n IfFail: [|:e| ^ fb value: e].
            " Remove wrapping %begin %end "
            '' = out ifTrue: [^ ''].
            ((out splitOn: '\n') slice: 1 @ -3) joinUsing: '\n').
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
            | 
            server tmuxCommand: 'capture-pane -J -t ', name, ' -p' IfFail: '(Not Connected)').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         cursorPosition = ( |
             list.
            | 
            list: server tmuxCommand: 'list-sessions -F \'#{session_name} #{cursor_x} #{cursor_y}\'' IfFail: [name, ' 0 0'].
            list: (list splitOn: '\n') mapBy: [|:line| line splitOn: ' '].
            list: list filterBy: [|:session| session first = name].
            list isEmpty ifTrue: [^  0 @ 0 ].
            (list first at: 1) asInteger @ (list first at: 2) asInteger).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'Category: insert\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertBackspace = ( |
            | insertKey: 'BSpace'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'Category: insert\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertDownArrow = ( |
            | insertKey: 'Down'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'Category: insert\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertEnter = ( |
            | insertKey: 'Enter'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'Category: insert\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertEscape = ( |
            | insertKey: 'Escape'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'Category: insert\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertKey: k = ( |
            | 
            server tmuxCommand: 'send-keys -t ', name, ' ', k IfFail: self. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'Category: insert\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertLeftArrow = ( |
            | insertKey: 'Left'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'Category: insert\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertPrintableChar: k = ( |
            | 
            insertKey: '\'', k, '\''. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'Category: insert\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertRightArrow = ( |
            | insertKey: 'Right'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'Category: insert\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertString: s = ( |
            | 
            s do: [|:k| insertPrintableChar: k]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'Category: insert\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertTab = ( |
            | insertKey: 'Tab'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'Category: insert\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertUpArrow = ( |
            | insertKey: 'Up'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: InitializeToExpression: (\'\')'
        
         name <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         namespace* = bootstrap stub -> 'globals' -> 'tmux' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         resize: pt = ( |
            | 
            server tmuxCommand: 'resize-window -t ', name, ' -x ', pt x asString, ' -y ', pt y asString IfFail: [|:e| error: 'Fail!']. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         tmuxEditorMorph = bootstrap define: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals uglyTextEditorMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux tmuxEditorMorph.

CopyDowns:
globals uglyTextEditorMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux tmuxEditorMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         copyDefaultStyle = ( |
            | copyString: '(not connected)' Style: (| color = paint named: 'white'. fontName = 'courier'. fontSize = 10 | )).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         copyOnNewSession = ( |
            | copyOnSession: tmux server newSession).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         copyOnSession: s = ( |
            | copyDefaultStyle tmuxSession: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         initializeString: string HPanel: panel Style: style = ( |
             divider.
             row.
            | 
             color: style color.
             borderWidth: 2.
             frameStyle: insetBezelStyle.
             beRigid.

            text: tmuxTextField copy color: color.
            text beFlexible.
            text setText: string.

            divider: frameMorph copy.
            divider frameStyle: divider insetBezelStyle.
            divider borderWidth: 1.
            divider baseMinHeight: 0.
            divider beShrinkWrapVertically.
            divider beFlexibleHorizontally.
            divider color: style color.

            row: rowMorph copy color: color.
            row borderWidth: 1.
            row  addMorphLast: text.
            panel ifNotNil: [ addMorphLast: panel].
            addMorphLast: divider.
            addMorphLast: row.
            resizeToText. 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'Comment: If we want to use something other than
(but compatibale with!) ui2_textField\x7fModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: private'
        
         initializeString: string Panel: panel Style: style = ( |
             row.
            | 
            borderWidth: 2.
            frameStyle: insetBezelStyle.
            beRigid.

            text: tmux tmuxTextField copy.
            text  beFlexible.
            text  setText: string.
            row: rowMorph copy.
            row  borderWidth: 0.
            panel ifNotNil: [row  addMorphLast: panel].
            row  addMorphLast: text.
            addMorphLast: row.
            resizeToText. 
            color: style color.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'tmuxEditorMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'uglyTextEditorMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         step = ( |
            | 
            text refreshContents. 
            text moveInsertionPointTo: tmuxSession cursorPosition.
            changed).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | tmux tmuxEditorMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> () From: ( | {
         'Category: Tmux State\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (tmux session)'
        
         tmuxSession <- bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         tmuxTextField = bootstrap define: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals ui2_textField copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux tmuxTextField.

CopyDowns:
globals ui2_textField. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux tmuxTextField parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         backspace = ( |
            | 
            tmuxSession insertBackspace. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         backward_char = ( |
            | 
            tmuxSession insertLeftArrow. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'Comment: This is sent for escape key - override\x7fModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         cancelTextChanges: evt = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         forward_char = ( |
            | tmuxSession insertRightArrow. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         insert_char: char = ( |
            | 
            char = '  ' 
               ifTrue: [tmuxSession insertTab]
                False: [tmuxSession insertPrintableChar: char].
             self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'tmuxTextField'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         next_line = ( |
            | 
            tmuxSession insertDownArrow. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'ui2_textField' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         previous_line = ( |
            | 
            tmuxSession insertUpArrow. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         refreshContents = ( |
            | setText: tmuxSession contents. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         split_line = ( |
            | 
            tmuxSession insertEnter. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         tmuxSession = ( |
            | owner owner tmuxSession).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | tmux tmuxTextField).
        } | ) 



 '-- Side effects'

 globals modules tmux postFileIn
