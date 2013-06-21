<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Talend_Error</fullName>
        <description>Email Talend Error</description>
        <protected>false</protected>
        <recipients>
            <recipient>vida.sadri@gmail.com.dev</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Talend_Integration_Template/Talend_Job_Error_Log</template>
    </alerts>
    <rules>
        <fullName>Email Talend Error</fullName>
        <actions>
            <name>Email_Talend_Error</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Integration_Status__c.Load_Status__c</field>
            <operation>equals</operation>
            <value>Fail</value>
        </criteriaItems>
        <description>Email Talend errors to an admin user</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
