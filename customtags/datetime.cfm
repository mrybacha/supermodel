<cfoutput>

<cfswitch expression="#thistag.executionmode#">
  <cfcase value="start">

    <cfinclude template="common.cfm" />
    <cfinvoke method="before" argumentcollection="#attributes#" />

    <div class="datetime #attributes.class#" id="#attributes.id#_wrapper">
      <input id="#attributes.id#" name="#attributes.id#" type="hidden" value="#lsDateFormat(request.data_object[attributes.id], 'yyyy-mm-dd')#" />
      <input id="#attributes.id#_dd" class="day" type="text" maxlength="2" />
      <input id="#attributes.id#_mm" class="month" type="text" maxlength="2" />
      <input id="#attributes.id#_yyyy" class="year" type="text" maxlength="4" />
      <img src="#request.path#images/calendar.gif" id="img" />
      <input id="#attributes.id#_hh" class="hour" type="text" maxlength="2" />
      <input id="#attributes.id#_mm" class="minute" type="text" maxlength="2" />
    </div>

    <cfinvoke method="after" argumentcollection="#attributes#" />

    <!---<cf_date id="#attributes.id#" label="#attributes.label#" style="float:left;">

    <cf_time id="#attributes.id#" label="">--->
  </cfcase>
</cfswitch>

</cfoutput>
