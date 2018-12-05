# TCC_XSLT_Remove-Duplicates_ConverttoCSV
Taleo Connect Client XSL Transformation to remove duplicates from an XSL output and output a CSV file. 

On an XML-report extract, add two com.taleo.integration.client.customstep.xml.XslPostStep steps to post-processing and specify active: true and xslFile: [path to each xsl]. Remove duplicates must come first, then XSL to CSV (or either can run stand-alone).

This is not intended to be used as-is (though it may work in some cases), but provides a starting point for performing these steps to your own content.

May also work with a vanilla XSL based transformation step.
