<%
    String content = "";
    
    String sValueC = request.getParameter("sValueC");
    String sValueS = request.getParameter("sValueS");
    String NormalRadio = request.getParameter("NormalRadio");
    int iRadio = 0;
    String sLearningFileName = request.getParameter("sLearningFileName");
    String nLDFAttributes = request.getParameter("nLDFAttributes");
    String nLDFInstances = request.getParameter("nLDFInstances");
    
    content = content + "Optimization Model\n";
    content = content + "No.\tDescription\tVariable\tValue\tRemark\n";
    content = content + "1\tPenalty Parameter, C\tnValueC\t" + sValueC+"\t-\n";
    content = content + "2\tKernel Parameter, S\tnValueS\t" + sValueS+"\t-\n";
    String temp = "";
    if (NormalRadio.equals("NormalRadio1")) {
        temp = "Original value";
        iRadio=1;
    }
    else if (NormalRadio.equals("NormalRadio2")) {
        temp = "Feature scaling";
        iRadio=2;
    }
    content = content + "3\tNormalization Method\tsNormalRadio\t" + iRadio+"\t" + temp+"\n";
    content = content + "4\tData File\tsFileName\t" + sLearningFileName+"\t-\n";
    content = content + "5\tNo. of Attributes\tnLDFAttributes\t" + nLDFAttributes+"\t-\n";
    content = content + "6\tNo. of Instances\tnLDFInstances\t" + nLDFInstances+"\t-\n";
    content = content + "4\tData File\tsLearningFileName\t" + sLearningFileName+"\t-\n";
    content = content + "5\tNo. of Attributes\tnDFAttributes\t" + nLDFAttributes+"\t-\n";
    content = content + "6\tNo. of Instances\tnDFInstances\t" + nLDFInstances+"\t-\n";

    response.setContentType("text/plain");
    response.setHeader("Content-Disposition", "attachment; filename=SFALSSVR_Model.txt"); // Force "Save As" dialogue.
    response.getWriter().write(content); // Write CSV file to response. This will be saved in the location specified by the user.
%>