<cfoutput>

<cfset dt = '' />

<cfswitch expression="#thistag.executionmode#">
  <cfcase value="start">
    <cfinclude template="common.cfm" />
    <cfinvoke method="before" argumentcollection="#attributes#" />
    <cfif value neq ''>
      <cfset dt = lsDateFormat(value, 'yyyy-mm-dd') />
    </cfif>
    <cfset tag = getBaseTagList() />
    <cfset name = "" />
    <cfif ListfindNoCase(tag, 'cf_datetime') eq 0>
      <cfset name = "name = ""#attributes.id#"""/>
    </cfif>
    <div class="date #attributes.class#" id="#attributes.id#_wrapper" style="#attributes.style#">
      <input id="#attributes.id#" #name# type="hidden" value="#dt#" />
      <input id="#attributes.id#_dd" class="day" type="text" maxlength="2" />
      <input id="#attributes.id#_mm" class="month" type="text" maxlength="2" />
      <input id="#attributes.id#_yyyy" class="year" type="text" maxlength="4" />
      <img src="#request.path#images/calendar.gif" />
    </div>
    <cfinvoke method="after" argumentcollection="#attributes#" />
  </cfcase>
</cfswitch>

</cfoutput>
