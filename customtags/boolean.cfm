<cfoutput>

<cfswitch expression="#thistag.executionmode#">
  <cfcase value="start">
    <cfinclude template="common.cfm" />
    <cfinvoke method="before" argumentcollection="#attributes#" />
    <select id="#attributes.id#" name="#attributes.id#">
      <option value="1" <cfif value EQ 1>selected="selected"</cfif>>Yes</option>
      <option value="0" <cfif value EQ 0>selected="selected"</cfif>>No</option>
    </select>
    <cfinvoke method="after" argumentcollection="#attributes#" />
  </cfcase>
</cfswitch>

</cfoutput>
