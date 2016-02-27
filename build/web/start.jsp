<!--
<script>
    alert('start.jsp');
</script>
-->

<% session.removeAttribute("task"); %>

<jsp:useBean id="task" scope="session"
    class="com.devsphere.articles.progressbar.TaskBean"/>

<% task.setRunning(true); %>

<% new Thread(task).start(); %>

<jsp:forward page="AllModules.jsp"/>

