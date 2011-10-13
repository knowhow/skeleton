/*
 * This file is part of the knowhow ERP, a free and open source
 * Enterprise Resource Planning software suite,
 * Copyright (c) 2010-2011 by bring.out doo Sarajevo.
 * It is licensed to you under the Common Public Attribution License
 * version 1.0, the full text of which (including knowhow-specific Exhibits)
 * is available in the file LICENSE_CPAL_bring.out_knowhow.md located at the
 * root directory of this source code archive.
 * By using this software, you agree to be bound by its terms.
 */

// ubaci skeleton u System menu
var _menuSystem = mainwindow.findChild("menu.sys");

// This will be a new menu
var _skeletonMenu = new QMenu(qsTr("knowhow skeleton"), mainwindow);

// prvo linija odvajanja
_menuSystem.addSeparator();
_menuSystem.addMenu(_skeletonMenu);

// Add actions for newly created menu...
var skeletonDebugAction = _skeletonMenu.addAction(qsTr("zviz na konzolu debug poruku"), mainwindow);

// Add separator
// fmkReportMenu.addSeparator();
//
// pushiraj na konzolu "hello knowhow ..."
function sZvizDebugMsg()
{
   mainwindow.sReportError("hello knowhow from skeleton package")
};

// add trigger to the skeletonDebugAction
skeletonDebugAction.triggered.connect(sZvizDebugMsg);
