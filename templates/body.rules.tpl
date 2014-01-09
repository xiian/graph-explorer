<div class="container-fluid">
%include templates/snippet.errors errors=errors
%from urlparse import urljoin
    <div class="arow">
<style>
.table.rules {
    table-layout: fixed;
    width: 100%;
}
.table.rules th {
    width: 200px;
}
.table.rules th:first-child {
    width: auto;
}
.table.rules td, .table.rules th {
    text-align: center;
}
.table.rules td:first-child, .table.rules td:last-child, .table.rules th:first-child, .table.rules th:last-child {
    text-align: left;
    overflow: hidden;
    text-overflow: ellipsis;
}
</style>
        <h2>Rules</h2>

        <table class="table rules">
            <tr><th>expr</th><th>val_warn</th><th>val_crit</th><th>dest</th></tr>
            % for rule in rules:
            <tr>
                <td>{{rule.expr}}</td>
                <td>{{rule.val_warn}}</td>
                <td>{{rule.val_crit}}</td>
                <td>{{rule.dest}}</td>
            </tr>
            % end
        </table>

    </div>
</div> <!-- /container -->
