<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%
    String content = "";
    
    String sValueC = request.getParameter("sValueC");
    String sValueS = request.getParameter("sValueS");
    String NormalRadioLSSVM = request.getParameter("NormalRadioLSSVM");
    int iRadio = 0;
    String sLearningFileNameLSSVM = request.getParameter("sLearningFileNameLSSVM");
    String nLDFAttributesLSSVM = request.getParameter("nLDFAttributesLSSVM");
    String nLDFInstancesLSSVM = request.getParameter("nLDFInstancesLSSVM");
    
    double d = Double.parseDouble(sValueC);
    NumberFormat formatter = new DecimalFormat("#");
    String f = formatter.format(d);
    
    content = content + "Optimization Model\n";
    content = content + "No.\tDescription\tVariable\tValue\tRemark\n";
    content = content + "1\tPenalty Parameter, C\tsValueC\t" + f +"\t-\n";
    content = content + "2\tKernel Parameter, S\tsValueS\t" + sValueS+"\t-\n";
    String temp = "";
    if (NormalRadioLSSVM.equals("NormalRadio1LSSVM")) {
        temp = "Original value";
        iRadio=1;
    }
    else if (NormalRadioLSSVM.equals("NormalRadio2LSSVM")) {
        temp = "Feature scaling";
        iRadio=2;
    }
    content = content + "3\tNormalization Method\tsNormalRadioLSSVM\t" + iRadio+"\t" + temp+"\n";
    content = content + "4\tData File\tsFileNameLSSVM\t" + sLearningFileNameLSSVM+"\t-\n";
    content = content + "5\tNo. of Attributes\tnLDFAttributesLSSVM\t" + nLDFAttributesLSSVM+"\t-\n";
    content = content + "6\tNo. of Instances\tnLDFInstancesLSSVM\t" + nLDFInstancesLSSVM+"\t-\n";
    content = content + "4\tData File\tsLearningFileNameLSSVM\t" + sLearningFileNameLSSVM+"\t-\n";
    content = content + "5\tNo. of Attributes\tnDFAttributesLSSVM\t" + nLDFAttributesLSSVM+"\t-\n";
    content = content + "6\tNo. of Instances\tnDFInstancesLSSVM\t" + nLDFInstancesLSSVM+"\t-\n";

    response.setContentType("text/plain");
    response.setHeader("Content-Disposition", "attachment; filename=SFALSSVM_Model.ocm"); // Force "Save As" dialogue.
    response.getWriter().write(content); // Write CSV file to response. This will be saved in the location specified by the user.
%>