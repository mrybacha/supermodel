<cfoutput>

<cfset dt = '' />

<cfswitch expression="#thistag.executionmode#">
  <cfcase value="start">
    <cfinclude template="common.cfm" />
    <cfinvoke method="before" argumentcollection="#attributes#" />
    <cfif value neq ''>
      <cfset dt = lsDateFormat(value, 'yyyy-mm-dd') & ' ' & lsTimeFormat(value, 'HH:mm') />
    </cfif>
    <div id="#attributes.id#_wrapper" class="datetime #attributes.class#">
      <input id="#attributes.id#" name="#attributes.id#" type="hidden" value="#dt#" />
      <cf_date id="#attributes.id#_date" label="" style="float:left;">
      <cf_time id="#attributes.id#_time" label="">
    </div>
    <cfinvoke method="after" argumentcollection="#attributes#" />
  </cfcase>
</cfswitch>

</cfoutput>
