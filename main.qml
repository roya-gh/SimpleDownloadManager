import QtQuick 2.9
import QtQuick.Window 2.0
import QtQuick.Controls 2.4
import QtQuick.Controls 1.4

ApplicationWindow {
    id: rootid
    visible: true
    width: 640
    height: 480
    title: qsTr("Simple Download Manager")


    Action{
        id : quitActionId
        text: qsTr("Exit")
        //   iconName: "exit"
        onTriggered : Qt.quit()
    }
    Action
    {
        id : newDownloadActionId
        text : qsTr("new download")
    }

    Action {
        id : startDownloadActionId
        text : qsTr("Start")
    }

    Action {
        id : increasePriorityId
        text : qsTr("Increase Priority")
    }

    Action {
        id : decreasePriorityId
        text : qsTr("Decrease Priority")
    }

    menuBar: MenuBar {
        id : mainMenuId
        Menu
        {
            title: qsTr("File")

            MenuItem
            {
                action : newDownloadActionId
            }
            MenuItem
            {
                action : quitActionId
            }
        }
        Menu
        {
            title: qsTr("Downloads")
            MenuItem
            {
                action : Action{text : qsTr("Start All")}
            }
            MenuItem
            {
                action : Action{text : qsTr("Stop All")}
            }
            MenuSeparator{}
            MenuItem
            {
                action : increasePriorityId
            }
            MenuItem
            {
                action :decreasePriorityId
            }
            MenuSeparator{}
            MenuItem
            {
                action : Action {text : qsTr("Remove Selected")}
            }

        }

        Menu
        {
            title: qsTr("Settings")
            MenuItem
            {
                action: Action{ text : qsTr("Configure SDM") }
            }
        }
        Menu
        {
            title: qsTr("Help")
            MenuItem
            {
                action : Action { text : qsTr("About SDM") }
            }
        }
    }

    toolBar : ToolBar
    {
        Row
        {
            ToolButton{ action:newDownloadActionId }
            ToolSeparator{}
            ToolButton{ action: startDownloadActionId }
            ToolButton{action: quitActionId }

        }
    }
}
