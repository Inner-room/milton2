<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="/templates/includes/theme-top.jsp" %>
    </head>

    <body>
        
        <%@include file="/templates/includes/theme-nav.jsp" %>

        <div class="container">
            <form class="form-horizontal editForm" method="POST" action="${pagePath}">
                <fieldset>
                    <legend>
                        Edit the band details
                        <a class="btn pull-right" href="."><i class="icon-edit"></i> Cancel</a>
                    </legend>
                    <div class="control-group">
                        <label class="control-label" >Band name</label>
                        <div class="controls">
                            <input id="name" type="text" name="name" value="${model.page.source.name}"/>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" >Description</label>
                        <div class="controls">
                            <textarea id="description" name="description">${model.page.source.description}</textarea>
                        </div>
                    </div>
                    <div class="control-group">
                        <div class="controls">
                            <button type="submit" class="btn"><i class="icon-ok-sign"></i> Save</button>
                        </div>
                    </div>                            
                </fieldset>
            </form>
        </div> <!-- /container -->

        <%@include file="includes/theme-bottom.jsp" %>
        
        <script type="text/javascript" language="javascript">
            $(function() {
                $("form.editForm").forms({
                    callback: function() {
                        $("form.editForm legend").after("<div class='alert'><button type='button' class='close' data-dismiss='alert'>&times;</button>Saved ok. <a href='.'>Return to the view page</a></div>")
                    }
                });
            });
        </script>
    </body>
</html>
