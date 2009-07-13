<cfparam name="attributes.class" default="" />
  
<cfoutput>

<cfswitch expression="#thistag.executionmode#">
  <cfcase value="start">
    <cfinclude template="common.cfm" />
    <cfinvoke method="before" argumentcollection="#attributes#" />

    <div class="date #attributes.class#" id="#attributes.id#_wrapper">
      <input id="#attributes.id#" name="#attributes.id#" class="hidden" type="hidden" value="#lsDateFormat(request.data_object[attributes.id], 'yyyy-mm-dd')#" />
      <input id="#attributes.id#_dd" class="day" type="text" maxlength="2" />
      <input id="#attributes.id#_mm" class="month" type="text" maxlength="2" />
      <input id="#attributes.id#_yyyy" class="year" type="text" maxlength="4" />
      <img src="#request.path#images/calendar.gif" />
    </div>

    <cfinvoke method="after" argumentcollection="#attributes#" />
  </cfcase>
</cfswitch>

</cfoutput>
