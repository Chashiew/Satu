<!--
<script>
    alert('stop.jsp');
</script>
-->

<jsp:useBean id="task" scope="session"
    class="com.devsphere.articles.progressbar.TaskBean"/>

<% task.setRunning(false); %>

<jsp:forward page="AllModules.jsp"/>
