# TCC_XSLT_Remove-Duplicates_ConverttoCSV
Taleo Connect Client XSL Transformation to remove duplicates from an XSL output and output a CSV file. 

On an XML-report extract, add two com.taleo.integration.client.customstep.xml.XslPostStep steps to post-processing and specify active: true and xslFile: [path to each xsl]. Remove duplicates must come first, then XSL to CSV (or either can run stand-alone).

May also work with a vanilla XSL based transformation step.
