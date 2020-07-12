const { google } = require("googleapis");
const { Storage } = require("@google-cloud/storage")

exports.csv2sheet = async (data, context) => {
  var fileName = data.name;
  // basic check that this is a *.csv file, etc...
  if (!fileName.endsWith(".csv")) {
    console.log("Not a .csv file, ignoring.");
    return;
  }
  // define name of new sheet  
  const sheetName = fileName.slice(0, -4);

  // TODO!
};