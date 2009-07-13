<cfset _id = attributes.id />
<cfif not structkeyexists(request.data_object, _id)>
  <cfset value = "" />
<cfelse>
  <cfset value = request.data_object[_id] />
</cfif>
<cfparam name="attributes.class" default="" />

<cfoutput>

<cfswitch expression="#thistag.executionmode#">
  <cfcase value="start">
    <cfinclude template="common.cfm" />
    <cfinvoke method="before" argumentcollection="#attributes#" />
    <input class="#attributes.class#" value="#value#" #thistag.attributes.string()# />
    <cfinvoke method="after" argumentcollection="#attributes#" />
  </cfcase>
</cfswitch>

</cfoutput>
