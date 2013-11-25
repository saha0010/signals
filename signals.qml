import QtQuick 2.1
import QtQuick.Controls 1.0

ApplicationWindow {
    id: applicationwindow
    title: qsTr("Signals and Slots in QML")
    width: 640
    height: 100

        TextField{
            id: input
            x:100
            y:50
            width: 100
            onTextChanged: {
            text: input.getText()

                if(text.search("f") > 0 )
                {
                    fah.changeText(text)
                    cel.changeText(parseInt(text.substring(0,text.length-1))-32/1.8 + "c")
                }
                else if(text.search("c") >0 )
                {
                    //C=K-273.15
                   // K=C+273.15
                    //F=Cx1.8+32
                    //C=(F-32)÷ 1.8

                    cel.changeText(text)
                    fah.changeText( parseInt(text.substring(0,text.length-1))*1.8+32 + "f")

                }
                else
                {}
            }
        }

        Label{
            id: cel
            x:400
            y:25
            function changeText(text) {
                            cel.text = text;
            }
        }
        Label{
            id:fah
            x:400
            y:75
            function changeText(text) {
                            fah.text = text;
            }
        }
}
