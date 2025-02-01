#############################################################################
# Generated by PAGE version 8.0
#  in conjunction with Tcl version 8.6
#  Jan 28, 2025 06:41:33 PM CST  platform: Linux
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    ::vTcl::MessageBox -title Error -message  "You must open project files from within PAGE."
    exit}


set image_list { 
    information_png "./graphics/information.png" 
    system_shutdown_png "./graphics/system-shutdown.png" 
    list_add_png "./graphics/list-add.png" 
    database_png "./graphics/database.png" 
    question_png "./graphics/question.png" 
    list_remove_png "./graphics/list-remove.png" 
    accessories_text_editor_png "./graphics/accessories-text-editor.png" 
    chubbyowl_png "./graphics/ChubbyOwl.png" 
    logo_png "./graphics/logo.png" 
    edit_find_png "./graphics/edit-find.png" 
    edit_clear_png "./graphics/edit-clear.png" 
    view_refresh_png "./graphics/view-refresh.png" 
    go_next_png "./graphics/go-next.png" 
}
vTcl:create_project_images $image_list   ;# In image.tcl

set desc "-family {DejaVu Sans} -size 11 -weight bold"
set vTcl(actual_gui_font_dft_desc) $desc
set vTcl(actual_gui_font_dft_name) [font create {*}$desc]
set desc "-family {DejaVu Sans} -size 11 -weight bold"
set vTcl(actual_gui_font_text_desc) $desc
set vTcl(actual_gui_font_text_name) [font create {*}$desc]
set vTcl(actual_gui_font_fixed_desc)  TkFixedFont
set vTcl(actual_gui_font_fixed_name)  TkFixedFont
set desc "-family {DejaVu Sans} -size 11 -weight bold"
set vTcl(actual_gui_font_menu_desc) $desc
set vTcl(actual_gui_font_menu_name) [font create {*}$desc]
set vTcl(actual_gui_font_tooltip_desc)  TkDefaultFont
set vTcl(actual_gui_font_tooltip_name)  TkDefaultFont
set vTcl(actual_gui_font_treeview_desc)  TkDefaultFont
set vTcl(actual_gui_font_treeview_name)  TkDefaultFont
########################################### 
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) gray40
set vTcl(analog_color_p) #c3c3c3
set vTcl(analog_color_m) beige
set vTcl(tabfg1) black
set vTcl(tabfg2) white
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(actual_gui_menu_active_fg)  #000000
########################################### 
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 0
set vTcl(mode) Absolute
set vTcl(project_theme) page-cornsilkdark



proc vTclWindow.top1 {base} {
    global vTcl
    if {$base == ""} {
        set base .top1
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    set target $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -menu $top.m56 -background cornsilk4 -highlightbackground cornsilk4 \
        -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 1010x827+398+454
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 4225 1410
    wm minsize $top 1 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    set toptitle "Greg's Knowledge Base"
    wm title $top $toptitle
    namespace eval ::widgets::${top}::ClassOption {}
    set ::widgets::${top}::ClassOption(-toptitle) $toptitle
    vTcl:DefineAlias "$top" "Main" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    menu "$top.m56" \
        -activebackground #d9d9d9 -activeforeground black \
        -font "-family {DejaVu Sans} -size 18 -weight bold" -tearoff 0 
    vTcl::widgets::core::popup::createCmd "$top.pop48" \
        -activebackground beige -activeforeground black -background cornsilk4 \
        -disabledforeground #68665a \
        -font "-family {DejaVu Sans} -size 18 -weight bold" -foreground black \
        -tearoff 1 
    global vTcl
    set val vTcl($top.pop48,-proc)
    set vTcl($top.pop48,-proc) popup1
    namespace eval ::widgets::$top.pop48 {}
    set ::widgets::$top.pop48::ClassOption(-proc) popup1
    set ::widgets::$top.pop48::options(-proc) popup1
    set ::widgets::$top.pop48::save(-proc) 1
    vTcl:DefineAlias "$top.pop48" "Popupmenu1" vTcl:WidgetProc "" 1
    $top.pop48 add command \
        -command "#lambda : on_pop1SelectAll(args)" -compound left \
        -font "-family {DejaVu Sans} -size 18 -weight bold" \
        -label "Select All" 
    $top.pop48 add separator \
        
    $top.pop48 add command \
        -command "#lambda : on_popCopy(args)" -compound left \
        -font "-family {DejaVu Sans} -size 18 -weight bold" -label "Copy" 
    $top.pop48 add command \
        -command "#lambda : on_popClear(args)" -compound left \
        -font "-family {DejaVu Sans} -size 18 -weight bold" -label "Clear" 
    $top.pop48 add command \
        -command "#lambda : on_popPaste(args)" -compound left \
        -font "-family {DejaVu Sans} -size 18 -weight bold" -label "Paste" 
    $top.pop48 add separator \
        
    $top.pop48 add command \
        -command "#lambda : on_popCloseMenu(args)" -compound left \
        -font "-family {DejaVu Sans} -size 18 -weight bold" \
        -label "Close Menu" 
    vTcl::widgets::core::popup::createCmd "$top.pop47" \
        -activebackground beige -activeforeground black -background cornsilk4 \
        -disabledforeground #68665a \
        -font "-family {DejaVu Sans} -size 18 -weight bold" -foreground black \
        -tearoff 1 
    global vTcl
    set val vTcl($top.pop47,-proc)
    set vTcl($top.pop47,-proc) popup2
    namespace eval ::widgets::$top.pop47 {}
    set ::widgets::$top.pop47::ClassOption(-proc) popup2
    set ::widgets::$top.pop47::options(-proc) popup2
    set ::widgets::$top.pop47::save(-proc) 1
    vTcl:DefineAlias "$top.pop47" "Popupmenu2" vTcl:WidgetProc "" 1
    $top.pop47 add command \
        -command "#lambda : on_pop2EditTopic(args)" -compound left \
        -font "-family {DejaVu Sans} -size 18 -weight bold" \
        -label "Edit Topic" 
    $top.pop47 add separator \
        
    $top.pop47 add command \
        -command "#lambda : on_pop2DeleteTopic(args)" -compound left \
        -font "-family {DejaVu Sans} -size 18 -weight bold" \
        -label "Delete Topic" 
    $top.pop47 add separator \
        
    $top.pop47 add command \
        -command "#lambda : on_pop2CloseMenu(args)" -compound left \
        -font "-family {DejaVu Sans} -size 18 -weight bold" \
        -label "Close Menu" 
    ttk::frame "$top.tFr47" \
        -borderwidth 2 -relief sunken -width 125 -height 75 
    vTcl:DefineAlias "$top.tFr47" "TFrame1" vTcl:WidgetProc "Main" 1
    set site_3_0 $top.tFr47
    ttk::frame "$site_3_0.tFr49" \
        -borderwidth 2 -relief sunken -width 125 -height 75 
    vTcl:DefineAlias "$site_3_0.tFr49" "FrameStatusBar" vTcl:WidgetProc "Main" 1
    set site_4_0 $site_3_0.tFr49
    ttk::label "$site_4_0.tLa47" \
        -font "-family {DejaVu Sans} -size 18 -weight bold" -relief sunken \
        -anchor center -textvariable "::StatusTime" -compound left 
    vTcl:DefineAlias "$site_4_0.tLa47" "LabelStatusTime" vTcl:WidgetProc "Main" 1
    vTcl:copy_lock $site_4_0.tLa47
    place $site_4_0.tLa47 \
        -in $site_4_0 -x 845 -y 1 -width 151 -relwidth 0 -height 44 \
        -relheight 0 -anchor nw -bordermode ignore 
    vTcl:copy_lock $site_3_0.tFr49
    ttk::frame "$site_3_0.tFr48" \
        -borderwidth 2 -relief sunken -width 125 -height 75 
    vTcl:DefineAlias "$site_3_0.tFr48" "FrameButtonBar" vTcl:WidgetProc "Main" 1
    set site_4_0 $site_3_0.tFr48
    ttk::button "$site_4_0.tBu64" \
        -command "on_btnAbout" -image information_png -compound none \
        -style "Toolbutton" -style Toolbutton 
    vTcl:DefineAlias "$site_4_0.tBu64" "btnAbout" vTcl:WidgetProc "Main" 1
    bind $site_4_0.tBu64 <<SetBalloon>> {
        set ::vTcl::balloon::%W {About}
    }
    ttk::button "$site_4_0.tBu53" \
        -command "on_btnExit" -image system_shutdown_png -compound none \
        -style "Toolbutton" -style Toolbutton 
    vTcl:DefineAlias "$site_4_0.tBu53" "btnExit" vTcl:WidgetProc "Main" 1
    bind $site_4_0.tBu53 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Exit}
    }
    vTcl:copy_lock $site_4_0.tBu53
    ttk::button "$site_4_0.tBu66" \
        -command "on_btnAdd" -image list_add_png -compound none \
        -style "Toolbutton" -style Toolbutton 
    vTcl:DefineAlias "$site_4_0.tBu66" "btnAdd" vTcl:WidgetProc "Main" 1
    bind $site_4_0.tBu66 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Add to database}
    }
    ttk::button "$site_4_0.tBu71" \
        -command "on_btnSQLShow" -image database_png -compound none \
        -style "Toolbutton" -style Toolbutton 
    vTcl:DefineAlias "$site_4_0.tBu71" "btnSQLShow" vTcl:WidgetProc "Main" 1
    ttk::button "$site_4_0.tBu65" \
        -command "on_btnHelp" -image question_png -compound none \
        -style "Toolbutton" -style Toolbutton 
    vTcl:DefineAlias "$site_4_0.tBu65" "btnHelp" vTcl:WidgetProc "Main" 1
    bind $site_4_0.tBu65 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Help}
    }
    ttk::button "$site_4_0.tBu67" \
        -command "on_btnRemove" -image list_remove_png -compound none \
        -state disabled -style "Toolbutton" -style Toolbutton 
    vTcl:DefineAlias "$site_4_0.tBu67" "btnRemove" vTcl:WidgetProc "Main" 1
    bind $site_4_0.tBu67 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Remove Current record}
    }
    ttk::button "$site_4_0.tBu50" \
        -command "on_btnTopicEdit" -image accessories_text_editor_png \
        -compound none -state disabled -style "Toolbutton" -style Toolbutton 
    vTcl:DefineAlias "$site_4_0.tBu50" "btnTopicEdit" vTcl:WidgetProc "Main" 1
    bind $site_4_0.tBu50 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Edit Topic}
    }
    ttk::label "$site_4_0.tLa57" \
        -font "-family {DejaVu Sans} -size 18 -weight bold" -relief flat \
        -image chubbyowl_png -compound left 
    vTcl:DefineAlias "$site_4_0.tLa57" "TLabel9" vTcl:WidgetProc "Main" 1
    place $site_4_0.tBu64 \
        -in $site_4_0 -x 840 -y 4 -anchor nw -bordermode ignore 
    place $site_4_0.tBu53 \
        -in $site_4_0 -x 951 -y 4 -width 42 -relwidth 0 -height 42 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.tBu66 \
        -in $site_4_0 -x 490 -y 4 -anchor nw -bordermode ignore 
    place $site_4_0.tBu71 \
        -in $site_4_0 -x 220 -y 4 -anchor nw -bordermode ignore 
    place $site_4_0.tBu65 \
        -in $site_4_0 -x 890 -y 4 -anchor nw -bordermode ignore 
    place $site_4_0.tBu67 \
        -in $site_4_0 -x 550 -y 4 -anchor nw -bordermode ignore 
    place $site_4_0.tBu50 \
        -in $site_4_0 -x 640 -y 4 -anchor nw -bordermode ignore 
    place $site_4_0.tLa57 \
        -in $site_4_0 -x 10 -y 4 -width 40 -relwidth 0 -height 40 \
        -relheight 0 -anchor nw -bordermode ignore 
    vTcl:copy_lock $site_3_0.tFr48
    ttk::frame "$site_3_0.tFr50" \
        -borderwidth 2 -relief sunken -width 1004 -height 635 
    vTcl:DefineAlias "$site_3_0.tFr50" "FrameMain" vTcl:WidgetProc "Main" 1
    set site_4_0 $site_3_0.tFr50
    ttk::frame "$site_4_0.tFr57" \
        -borderwidth 2 -relief sunken -width 985 -height 75 
    vTcl:DefineAlias "$site_4_0.tFr57" "FrameKeywords" vTcl:WidgetProc "Main" 1
    set site_5_0 $site_4_0.tFr57
    ttk::label "$site_5_0.tLa61" \
        -font "-family {DejaVu Sans} -size 18 -weight bold" -relief flat \
        -anchor center -text "Keywords:" -compound left 
    vTcl:DefineAlias "$site_5_0.tLa61" "TLabel2" vTcl:WidgetProc "Main" 1
    message "$site_5_0.mes59" \
        -anchor nw -background cornsilk4 \
        -font "-family {DejaVu Sans} -size 18 -weight bold" -foreground black \
        -highlightbackground cornsilk4 -highlightcolor black -padx 1 -pady 1 \
        -text "Message" -textvariable "msg2kwds" -width 965 
    vTcl:DefineAlias "$site_5_0.mes59" "Message2" vTcl:WidgetProc "Main" 1
    place $site_5_0.tLa61 \
        -in $site_5_0 -x 6 -y 2 -width 115 -relwidth 0 -height 24 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.mes59 \
        -in $site_5_0 -x 10 -y 25 -width 965 -relwidth 0 -height 44 \
        -relheight 0 -anchor nw -bordermode ignore 
    ttk::frame "$site_4_0.tFr58" \
        -borderwidth 2 -relief flat -width 985 -height 75 
    vTcl:DefineAlias "$site_4_0.tFr58" "FrameHider" vTcl:WidgetProc "Main" 1
    ttk::frame "$site_4_0.tFr59" \
        -borderwidth 2 -relief groove -width 985 -height 475 
    vTcl:DefineAlias "$site_4_0.tFr59" "FrameAbout" vTcl:WidgetProc "Main" 1
    set site_5_0 $site_4_0.tFr59
    ttk::label "$site_5_0.tLa49" \
        -font "-family {DejaVu Sans} -size 18 -weight bold" -relief flat \
        -text "Tlabel" -image logo_png -compound left 
    vTcl:DefineAlias "$site_5_0.tLa49" "TLableLogo" vTcl:WidgetProc "Main" 1
    ttk::frame "$site_5_0.tFr62" \
        -borderwidth 2 -relief sunken -width 965 -height 395 
    vTcl:DefineAlias "$site_5_0.tFr62" "TFrame4" vTcl:WidgetProc "Main" 1
    set site_6_0 $site_5_0.tFr62
    message "$site_6_0.mes63" \
        -anchor n -background cornsilk4 -borderwidth 2 \
        -font "-family {DejaVu Sans} -size 18 -weight bold" -foreground black \
        -highlightbackground cornsilk4 -highlightcolor black -justify center \
        -padx 1 -pady 1 -relief sunken \
        -text "


Greg's Knowledge Base

A database repository of some of my most helpful code snippets for PAGE and Python projects.

Project started 21 December, 2023

Written by Gregory Walters.

Copyright © 2023,2024 by Gregory Walters" \
        -width 955 
    vTcl:DefineAlias "$site_6_0.mes63" "Message1" vTcl:WidgetProc "Main" 1
    ttk::button "$site_6_0.tBu56" \
        -command "on_btnAboutDismiss" -text "Dismiss" -compound left 
    vTcl:DefineAlias "$site_6_0.tBu56" "btnAboutDismiss" vTcl:WidgetProc "Main" 1
    place $site_6_0.mes63 \
        -in $site_6_0 -x 4 -y 4 -width 955 -relwidth 0 -height 334 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_6_0.tBu56 \
        -in $site_6_0 -x 433 -y 350 -anchor nw -bordermode ignore 
    ttk::separator "$site_5_0.tSe61"
    vTcl:DefineAlias "$site_5_0.tSe61" "TSeparator1" vTcl:WidgetProc "Main" 1
    ttk::label "$site_5_0.tLa60" \
        -font "-family {DejaVu Sans} -size 24 -weight bold" -relief flat \
        -anchor center -text "About" -compound left 
    vTcl:DefineAlias "$site_5_0.tLa60" "TLabel3" vTcl:WidgetProc "Main" 1
    place $site_5_0.tLa49 \
        -in $site_5_0 -x 10 -y 2 -width 60 -relwidth 0 -height 60 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.tFr62 \
        -in $site_5_0 -x 10 -y 70 -width 965 -relwidth 0 -height 395 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.tSe61 \
        -in $site_5_0 -x 102 -y 52 -width 870 -relwidth 0 -anchor nw \
        -bordermode ignore 
    place $site_5_0.tLa60 \
        -in $site_5_0 -x 110 -y 15 -width 774 -relwidth 0 -height 29 \
        -relheight 0 -anchor nw -bordermode ignore 
    ttk::frame "$site_4_0.tFr52" \
        -borderwidth 2 -relief groove -width 975 -height 55 
    vTcl:DefineAlias "$site_4_0.tFr52" "FrameSearchBar" vTcl:WidgetProc "Main" 1
    set site_5_0 $site_4_0.tFr52
    ttk::entry "$site_5_0.tEn53" \
        -exportselection 0 -font "-family {DejaVu Sans} -size 17" \
        -textvariable "EntryKeyword" -cursor xterm 
    vTcl:DefineAlias "$site_5_0.tEn53" "TEntry1" vTcl:WidgetProc "Main" 1
    ttk::button "$site_5_0.tBu55" \
        -command "on_keywordSearch" -image edit_find_png -compound none 
    vTcl:DefineAlias "$site_5_0.tBu55" "btnKeywordSearch" vTcl:WidgetProc "Main" 1
    bind $site_5_0.tBu55 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Search}
    }
    ttk::label "$site_5_0.tLa56" \
        -font "-family {DejaVu Sans} -size 18 -weight bold" -relief flat \
        -anchor e -textvariable "::KwdTopic" -compound left 
    vTcl:DefineAlias "$site_5_0.tLa56" "TLabel1" vTcl:WidgetProc "Main" 1
    ttk::button "$site_5_0.tBu52" \
        -command "on_btnKwdClear" -image edit_clear_png -compound center 
    vTcl:DefineAlias "$site_5_0.tBu52" "btnKwdClear" vTcl:WidgetProc "Main" 1
    bind $site_5_0.tBu52 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Clear Search Box}
    }
    ttk::button "$site_5_0.tBu54" \
        -command "on_btnSwap" -image view_refresh_png -compound center 
    vTcl:DefineAlias "$site_5_0.tBu54" "btnSwap" vTcl:WidgetProc "Main" 1
    bind $site_5_0.tBu54 <<SetBalloon>> {
        set ::vTcl::balloon::%W {Swap Keyword/Topic}
    }
    place $site_5_0.tEn53 \
        -in $site_5_0 -x 220 -y 16 -width 386 -relwidth 0 -height 24 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.tBu55 \
        -in $site_5_0 -x 611 -y 7 -width 42 -relwidth 0 -height 42 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.tLa56 \
        -in $site_5_0 -x 20 -y 14 -width 201 -relwidth 0 -height 24 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.tBu52 \
        -in $site_5_0 -x 660 -y 7 -width 42 -relwidth 0 -anchor nw \
        -bordermode ignore 
    place $site_5_0.tBu54 \
        -in $site_5_0 -x 710 -y 7 -width 42 -relwidth 0 -height 42 \
        -relheight 0 -anchor nw -bordermode ignore 
    ttk::frame "$site_4_0.tFr54" \
        -borderwidth 2 -relief groove -width 985 -height 475 
    vTcl:DefineAlias "$site_4_0.tFr54" "FrameMainText" vTcl:WidgetProc "Main" 1
    set site_5_0 $site_4_0.tFr54
    ttk::button "$site_5_0.tBu51" \
        -command "on_btnMainDismiss" -text "Dismiss" -compound left 
    vTcl:DefineAlias "$site_5_0.tBu51" "btnMainDismiss" vTcl:WidgetProc "Main" 1
    ttk::label "$site_5_0.tLa53" \
        -font "-family {DejaVu Sans} -size 20 -weight bold" -relief flat \
        -anchor center -text "Search Results" -compound left 
    vTcl:DefineAlias "$site_5_0.tLa53" "TLabel8" vTcl:WidgetProc "Main" 1
    vTcl::widgets::ttk::scrolledtext::CreateCmd "$site_5_0.scr52" \
        -borderwidth 2 -relief groove -background cornsilk4 -height 75 \
        -width 125 
    vTcl:DefineAlias "$site_5_0.scr52" "Scrolledtext1" vTcl:WidgetProc "Main" 1

    $site_5_0.scr52.01 configure -background white \
        -exportselection 0 \
        -font "-family {DejaVu Sans} -size 11 -weight bold" \
        -foreground black \
        -height 3 \
        -highlightbackground cornsilk4 \
        -highlightcolor black \
        -insertbackground black \
        -insertborderwidth 3 \
        -selectbackground #d9d9d9 \
        -selectforeground black \
        -width 10 \
        -wrap none
    place $site_5_0.tBu51 \
        -in $site_5_0 -x 820 -y 10 -width 118 -relwidth 0 -height 30 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.tLa53 \
        -in $site_5_0 -x 400 -y 10 -width 184 -relwidth 0 -height 36 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.scr52 \
        -in $site_5_0 -x 4 -y 60 -width 976 -relwidth 0 -height 415 \
        -relheight 0 -anchor nw -bordermode ignore 
    ttk::frame "$site_4_0.tFr51" \
        -borderwidth 2 -relief groove -width 985 -height 475 
    vTcl:DefineAlias "$site_4_0.tFr51" "FrameEditor" vTcl:WidgetProc "Main" 1
    set site_5_0 $site_4_0.tFr51
    ttk::label "$site_5_0.tLa48" \
        -font "-family {DejaVu Sans} -size 18 -weight bold" -relief flat \
        -anchor e -text "Topic: " -compound left 
    vTcl:DefineAlias "$site_5_0.tLa48" "TLabel6" vTcl:WidgetProc "Main" 1
    ttk::label "$site_5_0.tLa55" \
        -font "-family {DejaVu Sans} -size 18 -weight bold" -relief flat \
        -anchor e -text "Keywords: " -compound left 
    vTcl:DefineAlias "$site_5_0.tLa55" "TLabel5" vTcl:WidgetProc "Main" 1
    ttk::button "$site_5_0.tBu49" \
        -command "on_frameEditDismiss" -text "Dismiss" -compound left 
    vTcl:DefineAlias "$site_5_0.tBu49" "btnFrameEditDismiss" vTcl:WidgetProc "Main" 1
    ttk::button "$site_5_0.tBu57" \
        -command "on_btnEditSave" -text "Save" -compound left 
    vTcl:DefineAlias "$site_5_0.tBu57" "btnEditSave" vTcl:WidgetProc "Main" 1
    ttk::entry "$site_5_0.tEn49" \
        -font "-family {DejaVu Sans} -size 17" -textvariable "EntTopic" \
        -cursor xterm 
    vTcl:DefineAlias "$site_5_0.tEn49" "TEntry3" vTcl:WidgetProc "Main" 1
    ttk::entry "$site_5_0.tEn54" \
        -exportselection 0 -font "-family {DejaVu Sans} -size 17" \
        -textvariable "EntryKeywords1" -cursor xterm 
    vTcl:DefineAlias "$site_5_0.tEn54" "TEntry2" vTcl:WidgetProc "Main" 1
    ttk::label "$site_5_0.tLa52" \
        -font "-family {DejaVu Sans} -size 18 -weight bold" -relief flat \
        -anchor center -textvariable "::EditorMode" -compound left 
    vTcl:DefineAlias "$site_5_0.tLa52" "TLabel4" vTcl:WidgetProc "Main" 1
    ttk::frame "$site_5_0.tFr60" \
        -borderwidth 2 -relief groove -width 975 -height 355 
    vTcl:DefineAlias "$site_5_0.tFr60" "TFrame2" vTcl:WidgetProc "Main" 1
    set site_6_0 $site_5_0.tFr60
    vTcl::widgets::ttk::scrolledtext::CreateCmd "$site_6_0.scr61" \
        -borderwidth 2 -relief groove -background cornsilk4 -height 75 \
        -width 125 
    vTcl:DefineAlias "$site_6_0.scr61" "Scrolledtext3" vTcl:WidgetProc "Main" 1

    $site_6_0.scr61.01 configure -background white \
        -exportselection 0 \
        -font "-family {DejaVu Sans} -size 11 -weight bold" \
        -foreground black \
        -height 3 \
        -highlightbackground cornsilk4 \
        -highlightcolor black \
        -insertbackground black \
        -insertborderwidth 3 \
        -selectbackground #d9d9d9 \
        -selectforeground black \
        -width 10 \
        -wrap none
    place $site_6_0.scr61 \
        -in $site_6_0 -x 0 -y 0 -width 969 -relwidth 0 -height 355 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.tLa48 \
        -in $site_5_0 -x 20 -y 40 -width 141 -relwidth 0 -height 24 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.tLa55 \
        -in $site_5_0 -x 20 -y 73 -width 141 -relwidth 0 -height 24 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.tBu49 \
        -in $site_5_0 -x 860 -y 20 -anchor nw -bordermode ignore 
    place $site_5_0.tBu57 \
        -in $site_5_0 -x 730 -y 20 -anchor nw -bordermode ignore 
    place $site_5_0.tEn49 \
        -in $site_5_0 -x 170 -y 40 -width 396 -relwidth 0 -height 24 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.tEn54 \
        -in $site_5_0 -x 170 -y 74 -width 716 -relwidth 0 -height 24 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.tLa52 \
        -in $site_5_0 -x 10 -y 10 -width 281 -relwidth 0 -height 24 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.tFr60 \
        -in $site_5_0 -x 5 -y 116 -width 975 -relwidth 0 -height 355 \
        -relheight 0 -anchor nw -bordermode ignore 
    ttk::frame "$site_4_0.tFr61" \
        -borderwidth 2 -relief groove -width 985 -height 475 
    vTcl:DefineAlias "$site_4_0.tFr61" "FrameSQL" vTcl:WidgetProc "Main" 1
    set site_5_0 $site_4_0.tFr61
    ttk::label "$site_5_0.tLa70" \
        -font "-family {DejaVu Sans} -size 24 -weight bold" -relief flat \
        -text "All Topics" -compound left 
    vTcl:DefineAlias "$site_5_0.tLa70" "TLabel7" vTcl:WidgetProc "Main" 1
    ttk::button "$site_5_0.tBu69" \
        -command "on_btnSQLDismiss" -text "Dismiss" -compound left 
    vTcl:DefineAlias "$site_5_0.tBu69" "btnSQLDismiss" vTcl:WidgetProc "Main" 1
    ttk::entry "$site_5_0.tEn47" \
        -font "-family {DejaVu Sans} -size 17" -textvariable "ParamSQL" \
        -cursor xterm 
    vTcl:DefineAlias "$site_5_0.tEn47" "TEntry4" vTcl:WidgetProc "Main" 1
    ttk::button "$site_5_0.tBu48" \
        -command "on_btnSQLGo" -image go_next_png -compound none 
    vTcl:DefineAlias "$site_5_0.tBu48" "btnSQLGo" vTcl:WidgetProc "Main" 1
    ttk::frame "$site_5_0.tFr63" \
        -borderwidth 2 -relief groove -width 295 -height 395 
    vTcl:DefineAlias "$site_5_0.tFr63" "TFrame3" vTcl:WidgetProc "Main" 1
    set site_6_0 $site_5_0.tFr63
    vTcl::widgets::ttk::scrolledlistbox::CreateCmd "$site_6_0.scr64" \
        -background cornsilk4 -height 75 -width 125 
    vTcl:DefineAlias "$site_6_0.scr64" "Scrolledlistbox2" vTcl:WidgetProc "Main" 1

    $site_6_0.scr64.01 configure -background white \
        -cursor xterm \
        -disabledforeground #68665a \
        -exportselection 0 \
        -font TkFixedFont \
        -foreground black \
        -height 3 \
        -highlightbackground cornsilk4 \
        -highlightcolor #d9d9d9 \
        -selectbackground #d9d9d9 \
        -selectforeground black \
        -width 10
    place $site_6_0.scr64 \
        -in $site_6_0 -x 3 -y 10 -width 286 -relwidth 0 -height 380 \
        -relheight 0 -anchor nw -bordermode ignore 
    ttk::frame "$site_5_0.tFr65" \
        -borderwidth 2 -relief groove -width 665 -height 395 
    vTcl:DefineAlias "$site_5_0.tFr65" "TFrame7" vTcl:WidgetProc "Main" 1
    set site_6_0 $site_5_0.tFr65
    vTcl::widgets::ttk::scrolledtext::CreateCmd "$site_6_0.scr66" \
        -borderwidth 2 -relief groove -background cornsilk4 -height 75 \
        -width 125 
    vTcl:DefineAlias "$site_6_0.scr66" "Scrolledtext4" vTcl:WidgetProc "Main" 1

    $site_6_0.scr66.01 configure -background white \
        -exportselection 0 \
        -font "-family {DejaVu Sans} -size 11 -weight bold" \
        -foreground black \
        -height 3 \
        -highlightbackground cornsilk4 \
        -highlightcolor black \
        -insertbackground black \
        -insertborderwidth 3 \
        -selectbackground #d9d9d9 \
        -selectforeground black \
        -width 10 \
        -wrap none
    place $site_6_0.scr66 \
        -in $site_6_0 -x 3 -y 10 -width 660 -relwidth 0 -height 380 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.tLa70 \
        -in $site_5_0 -x 20 -y 20 -width 131 -relwidth 0 -height 34 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.tBu69 \
        -in $site_5_0 -x 870 -y 20 -anchor nw -bordermode ignore 
    place $site_5_0.tEn47 \
        -in $site_5_0 -x 180 -y 24 -width 326 -relwidth 0 -height 24 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.tBu48 \
        -in $site_5_0 -x 508 -y 17 -width 42 -relwidth 0 -height 42 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.tFr63 \
        -in $site_5_0 -x 10 -y 70 -width 295 -relwidth 0 -height 395 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.tFr65 \
        -in $site_5_0 -x 310 -y 70 -width 665 -relwidth 0 -height 395 \
        -relheight 0 -anchor nw -bordermode ignore 
    ttk::frame "$site_4_0.tFr53" \
        -borderwidth 2 -relief groove -width 985 -height 475 
    vTcl:DefineAlias "$site_4_0.tFr53" "FrameSearchResults" vTcl:WidgetProc "Main" 1
    set site_5_0 $site_4_0.tFr53
    ttk::label "$site_5_0.tLa54" \
        -font "-family {DejaVu Sans} -size 24 -weight bold" -relief flat \
        -anchor center -textvariable "::SearchResultsTitle" -compound left 
    vTcl:DefineAlias "$site_5_0.tLa54" "TLabel2" vTcl:WidgetProc "Main" 1
    ttk::button "$site_5_0.tBu47" \
        -command "on_btnSearchDone" -text "Done" -compound left 
    vTcl:DefineAlias "$site_5_0.tBu47" "btnSearchDone" vTcl:WidgetProc "Main" 1
    ttk::frame "$site_5_0.tFr55" \
        -borderwidth 2 -relief groove -width 305 -height 385 
    vTcl:DefineAlias "$site_5_0.tFr55" "TFrame5" vTcl:WidgetProc "Main" 1
    set site_6_0 $site_5_0.tFr55
    vTcl::widgets::ttk::scrolledlistbox::CreateCmd "$site_6_0.scr57" \
        -background cornsilk4 -height 75 -width 125 
    vTcl:DefineAlias "$site_6_0.scr57" "Scrolledlistbox1" vTcl:WidgetProc "Main" 1

    $site_6_0.scr57.01 configure -background white \
        -cursor xterm \
        -disabledforeground #68665a \
        -exportselection 0 \
        -font TkFixedFont \
        -foreground black \
        -height 3 \
        -highlightbackground cornsilk4 \
        -highlightcolor #d9d9d9 \
        -selectbackground #d9d9d9 \
        -selectforeground black \
        -width 10
    vTcl:copy_lock $site_6_0.scr57
    place $site_6_0.scr57 \
        -in $site_6_0 -x 3 -y 3 -width 294 -relwidth 0 -height 377 \
        -relheight 0 -anchor nw -bordermode ignore 
    ttk::frame "$site_5_0.tFr56" \
        -borderwidth 2 -relief groove -width 655 -height 385 
    vTcl:DefineAlias "$site_5_0.tFr56" "TFrame6" vTcl:WidgetProc "Main" 1
    set site_6_0 $site_5_0.tFr56
    vTcl::widgets::ttk::scrolledtext::CreateCmd "$site_6_0.scr58" \
        -borderwidth 2 -relief groove -background cornsilk4 -height 75 \
        -width 125 
    vTcl:DefineAlias "$site_6_0.scr58" "Scrolledtext2" vTcl:WidgetProc "Main" 1

    $site_6_0.scr58.01 configure -background white \
        -exportselection 0 \
        -font "-family {DejaVu Sans} -size 11 -weight bold" \
        -foreground black \
        -height 3 \
        -highlightbackground cornsilk4 \
        -highlightcolor black \
        -insertbackground black \
        -insertborderwidth 3 \
        -selectbackground #d9d9d9 \
        -selectforeground black \
        -width 10 \
        -wrap none
    place $site_6_0.scr58 \
        -in $site_6_0 -x 10 -y 10 -width 644 -relwidth 0 -height 374 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.tLa54 \
        -in $site_5_0 -x 20 -y 20 -width 507 -relwidth 0 -height 29 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.tBu47 \
        -in $site_5_0 -x 830 -y 10 -width 131 -relwidth 0 -height 40 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.tFr55 \
        -in $site_5_0 -x 10 -y 80 -width 305 -relwidth 0 -height 385 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.tFr56 \
        -in $site_5_0 -x 320 -y 80 -width 655 -relwidth 0 -height 385 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.tFr57 \
        -in $site_4_0 -x 10 -y 83 -width 985 -relwidth 0 -height 75 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.tFr58 \
        -in $site_4_0 -x 10 -y 83 -width 985 -relwidth 0 -height 75 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.tFr59 \
        -in $site_4_0 -x 10 -y 160 -width 985 -relwidth 0 -height 475 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.tFr52 \
        -in $site_4_0 -x 10 -y 10 -width 975 -relwidth 0 -height 55 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.tFr54 \
        -in $site_4_0 -x 10 -y 160 -width 985 -relwidth 0 -height 475 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.tFr51 \
        -in $site_4_0 -x 10 -y 160 -width 985 -relwidth 0 -height 475 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.tFr61 \
        -in $site_4_0 -x 10 -y 160 -width 985 -relwidth 0 -height 475 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.tFr53 \
        -in $site_4_0 -x 10 -y 160 -width 985 -relwidth 0 -height 475 \
        -relheight 0 -anchor nw -bordermode ignore 
    vTcl:copy_lock $site_3_0.tFr50
    place $site_3_0.tFr49 \
        -in $site_3_0 -x 3 -y 696 -width 1004 -relwidth 0 -height 50 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tFr48 \
        -in $site_3_0 -x 3 -y 2 -width 1004 -relwidth 0 -height 50 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tFr50 \
        -in $site_3_0 -x 3 -y 51 -width 1004 -relwidth 0 -height 644 \
        -relheight 0 -anchor nw -bordermode ignore 
    vTcl:copy_lock $top.tFr47
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.tFr47 \
        -in $top -x 0 -y 0 -width 0 -relwidth 1 -height 750 -relheight 0 \
        -anchor nw -bordermode ignore 

    vTcl:FireEvent $base <<Ready>>
}

proc 36 {args} {return 1}


Window show .
set btop1 ""
if {$vTcl(borrow)} {
    set btop1 .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop1 $vTcl(tops)] != -1} {
        set btop1 .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop1
Window show .top1 $btop1
if {$vTcl(borrow)} {
    $btop1 configure -background plum
}

