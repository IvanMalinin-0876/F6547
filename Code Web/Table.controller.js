sap.ui.define(['jquery.sap.global', 'sap/m/TablePersoController', 'sap/m/MessageBox', './DemoPersoService', './Formatter', 'sap/ui/core/mvc/Controller', 'sap/ui/core/util/Export', 'sap/ui/core/util/ExportTypeCSV', 'sap/ui/model/json/JSONModel', 'sap/ui/export/Spreadsheet'], function (jQuery, TablePersoController, MessageBox, DemoPersoService, Formatter, Controller, Export, ExportTypeCSV, JSONModel, Spreadsheet) {
    "use strict";
    var TableController = Controller.extend("sap.m.sample.TableExport.Table", {
        onInit: function () {
            // set explored app's demo model on this sample
            var oModel = new JSONModel(jQuery.sap.getModulePath("sap.ui.demo.mock", "/products.json"));
            this.getView().setModel(oModel);
        },
        onExcelDataExport: sap.m.Table.prototype.exportData || function (oEvent) {
            var oSpreadsheet = new Spreadsheet({
                dataSource: this.getView().getModel().getProperty('/ProductCollection'),
                fileName: "export.xlsx",
                workbook: {
                    columns: [{
                        label: "Наименование продукта",
                        property: "Name",
                        width: 30
                    }, {
                        label: "Номер",
                        property: "ProductId"
                    }, {
                        label: "Поставщик",
                        property: "SupplierName",
                        width: 20
                    }, {
                        label: "Ширина",
                        property: "Width",
                        type: "number"
                    }, {
                        label: "Глубина",
                        type: "number",
                        property: "Depth"
                    }, {
                        label: "Высота",
                        type: "number",
                        property: "Height"
                    }, {
                        label: "Ед.Изм",
                        property: "DimUnit"
                    }, {
                        label: "Объем",
                        property: "WeightMeasure",
                        type: "number"
                    }, {
                        label: "Цена",
                        property: "Price",
                        type: "number",
                        scale: "2"
                    }]
                }
            });
            oSpreadsheet.onprogress = function (iValue) {
                jQuery.sap.log.debug("Export: " + iValue + "% completed");
            };
            oSpreadsheet.build().then(function () { jQuery.sap.log.debug("Export is finished"); }).catch(function (sMessage) { jQuery.sap.log.error("Export error: " + sMessage); });
        }
    });
    return TableController;
});