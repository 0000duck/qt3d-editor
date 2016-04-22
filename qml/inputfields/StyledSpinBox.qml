/****************************************************************************
**
** Copyright (C) 2016 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the Qt3D Editor of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:GPL-EXCEPT$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 as published by the Free Software
** Foundation with exceptions as appearing in the file LICENSE.GPL3-EXCEPT
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/
import QtQuick 2.5
import Qt.labs.controls 1.0 as QLC

QLC.SpinBox {
    id: control
    font.family: mainwindow.labelFontFamily
    font.weight: mainwindow.labelFontWeight
    font.pixelSize: mainwindow.labelFontPixelSize

    background: Rectangle {
        border.color: mainwindow.listHighlightColor
        color: mainwindow.paneBackgroundColor
    }

    down.indicator: Rectangle {
        x: control.mirrored ? parent.width - width : 0
        height: parent.height
        implicitWidth: 40
        implicitHeight: 40
        border.color: mainwindow.listHighlightColor
        color: mainwindow.listHighlightColor
        Image {
            anchors.centerIn: parent
            source: "/images/spinbox_down.png"
        }
    }

    up.indicator: Rectangle {
        x: control.mirrored ? 0 : parent.width - width
        height: parent.height
        implicitWidth: 40
        implicitHeight: 40
        border.color: mainwindow.listHighlightColor
        color: mainwindow.listHighlightColor
        Image {
            anchors.centerIn: parent
            source: "/images/spinbox_up.png"
        }
    }
}