<cfoutput>

<cfset dt = '' />

<cfswitch expression="#thistag.executionmode#">
  <cfcase value="start">
    <cfinclude template="common.cfm" />
    <cfinvoke method="before" argumentcollection="#attributes#" />
    <cfif value neq ''>
      <cfset dt = lsTimeFormat(value, 'HH:mm') />
    </cfif>
    <cfset tag = getBaseTagList() />
    <cfset name = "" />
    <cfif ListfindNoCase(tag, 'cf_datetime') eq 0>
      <cfset name = "name = ""#attributes.id#"""/>
    </cfif>
    <div class="time #attributes.class#" id="#attributes.id#_wrapper" style="#attributes.style#">
      <input id="#attributes.id#" #name# type="hidden" value="#dt#" />
      <input id="#attributes.id#_hh" class="hour" type="text" maxlength="2" />
      <input id="#attributes.id#_mm" class="minute" type="text" maxlength="2" />
    </div>
    <cfinvoke method="after" argumentcollection="#attributes#" />
  </cfcase>
</cfswitch>

</cfoutput>
