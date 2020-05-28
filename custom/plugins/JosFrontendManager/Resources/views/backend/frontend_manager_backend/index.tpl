{extends file="parent:backend/_clicklayout/layout.tpl"}
{block name="content/main"}


<div class="row">
    <div class="col-md-6">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title"><i class="click-blue form24 mdi mdi-message-text-outline"></i> aktuelle Messages MentionDSXML</h5>
                <table class="table">
                    <tbody>

                        <tr>
                            <td><i class="click-green form24 mdi mdi-alert"></i> </td>
                            <td>-- aktuell keine Messages vorhanden --</td>
                        </tr>


                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title"><i class="click-blue form24 mdi mdi-message-text-outline"></i>aktuelle Messages Filter</h5>
                <table class="table">
                    <tbody>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

    <div class="col-md-6">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title"><i class="click-blue form24 mdi mdi-upload"></i> letzte Mention Uploads</h5>
                <table class="table">
                    <tbody>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
    </div>

{/block}