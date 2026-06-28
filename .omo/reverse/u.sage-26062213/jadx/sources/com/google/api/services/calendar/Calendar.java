package com.google.api.services.calendar;

import com.google.api.client.googleapis.services.AbstractGoogleClientRequest;
import com.google.api.client.googleapis.services.GoogleClientRequestInitializer;
import com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient;
import com.google.api.client.http.HttpMethods;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.util.DateTime;
import com.google.api.client.util.Key;
import com.google.api.client.util.Preconditions;
import com.google.api.services.calendar.model.AclRule;
import com.google.api.services.calendar.model.CalendarListEntry;
import com.google.api.services.calendar.model.Channel;
import com.google.api.services.calendar.model.Event;
import com.google.api.services.calendar.model.FreeBusyRequest;
import com.google.api.services.calendar.model.FreeBusyResponse;
import com.google.api.services.calendar.model.Setting;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class Calendar extends AbstractGoogleJsonClient {
    public static final String DEFAULT_BASE_URL = "https://www.googleapis.com/calendar/v3/";
    public static final String DEFAULT_BATCH_PATH = "batch/calendar/v3";
    public static final String DEFAULT_MTLS_ROOT_URL = "https://www.mtls.googleapis.com/";
    public static final String DEFAULT_ROOT_URL = "https://www.googleapis.com/";
    public static final String DEFAULT_SERVICE_PATH = "calendar/v3/";

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public class Acl {

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Delete extends CalendarRequest<Void> {
            private static final String REST_PATH = "calendars/{calendarId}/acl/{ruleId}";

            @Key
            private String calendarId;

            @Key
            private String ruleId;

            public Delete(String str, String str2) {
                super(Calendar.this, HttpMethods.DELETE, REST_PATH, null, Void.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
                this.ruleId = (String) Preconditions.checkNotNull(str2, "Required parameter ruleId must be specified.");
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            public String getRuleId() {
                return this.ruleId;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt, reason: merged with bridge method [inline-methods] */
            public CalendarRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt2(str);
            }

            public Delete setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields, reason: merged with bridge method [inline-methods] */
            public CalendarRequest<Void> setFields2(String str) {
                return (Delete) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey, reason: merged with bridge method [inline-methods] */
            public CalendarRequest<Void> setKey2(String str) {
                return (Delete) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken, reason: merged with bridge method [inline-methods] */
            public CalendarRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint, reason: merged with bridge method [inline-methods] */
            public CalendarRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser, reason: merged with bridge method [inline-methods] */
            public CalendarRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser2(str);
            }

            public Delete setRuleId(String str) {
                this.ruleId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp, reason: merged with bridge method [inline-methods] */
            public CalendarRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Get extends CalendarRequest<AclRule> {
            private static final String REST_PATH = "calendars/{calendarId}/acl/{ruleId}";

            @Key
            private String calendarId;

            @Key
            private String ruleId;

            public Get(String str, String str2) {
                super(Calendar.this, HttpMethods.GET, REST_PATH, null, AclRule.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
                this.ruleId = (String) Preconditions.checkNotNull(str2, "Required parameter ruleId must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            public String getRuleId() {
                return this.ruleId;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Get set(String str, Object obj) {
                return (Get) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<AclRule> setAlt2(String str) {
                return (Get) super.setAlt2(str);
            }

            public Get setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<AclRule> setFields2(String str) {
                return (Get) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<AclRule> setKey2(String str) {
                return (Get) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<AclRule> setOauthToken2(String str) {
                return (Get) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<AclRule> setPrettyPrint2(Boolean bool) {
                return (Get) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<AclRule> setQuotaUser2(String str) {
                return (Get) super.setQuotaUser2(str);
            }

            public Get setRuleId(String str) {
                this.ruleId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<AclRule> setUserIp2(String str) {
                return (Get) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Insert extends CalendarRequest<AclRule> {
            private static final String REST_PATH = "calendars/{calendarId}/acl";

            @Key
            private String calendarId;

            @Key
            private Boolean sendNotifications;

            public Insert(String str, AclRule aclRule) {
                super(Calendar.this, HttpMethods.POST, REST_PATH, aclRule, AclRule.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
                checkRequiredParameter(aclRule, "content");
                checkRequiredParameter(aclRule.getRole(), "AclRule.getRole()");
                checkRequiredParameter(aclRule, "content");
                checkRequiredParameter(aclRule.getScope(), "AclRule.getScope()");
                checkRequiredParameter(aclRule, "content");
                checkRequiredParameter(aclRule.getScope().getType(), "AclRule.getScope().getType()");
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            public Boolean getSendNotifications() {
                return this.sendNotifications;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<AclRule> setAlt2(String str) {
                return (Insert) super.setAlt2(str);
            }

            public Insert setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<AclRule> setFields2(String str) {
                return (Insert) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<AclRule> setKey2(String str) {
                return (Insert) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<AclRule> setOauthToken2(String str) {
                return (Insert) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<AclRule> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<AclRule> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser2(str);
            }

            public Insert setSendNotifications(Boolean bool) {
                this.sendNotifications = bool;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<AclRule> setUserIp2(String str) {
                return (Insert) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class List extends CalendarRequest<com.google.api.services.calendar.model.Acl> {
            private static final String REST_PATH = "calendars/{calendarId}/acl";

            @Key
            private String calendarId;

            @Key
            private Integer maxResults;

            @Key
            private String pageToken;

            @Key
            private Boolean showDeleted;

            @Key
            private String syncToken;

            public List(String str) {
                super(Calendar.this, HttpMethods.GET, REST_PATH, null, com.google.api.services.calendar.model.Acl.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            public Integer getMaxResults() {
                return this.maxResults;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public Boolean getShowDeleted() {
                return this.showDeleted;
            }

            public String getSyncToken() {
                return this.syncToken;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<com.google.api.services.calendar.model.Acl> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            public List setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<com.google.api.services.calendar.model.Acl> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<com.google.api.services.calendar.model.Acl> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            public List setMaxResults(Integer num) {
                this.maxResults = num;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<com.google.api.services.calendar.model.Acl> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<com.google.api.services.calendar.model.Acl> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<com.google.api.services.calendar.model.Acl> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            public List setShowDeleted(Boolean bool) {
                this.showDeleted = bool;
                return this;
            }

            public List setSyncToken(String str) {
                this.syncToken = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<com.google.api.services.calendar.model.Acl> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Patch extends CalendarRequest<AclRule> {
            private static final String REST_PATH = "calendars/{calendarId}/acl/{ruleId}";

            @Key
            private String calendarId;

            @Key
            private String ruleId;

            @Key
            private Boolean sendNotifications;

            public Patch(String str, String str2, AclRule aclRule) {
                super(Calendar.this, HttpMethods.PATCH, REST_PATH, aclRule, AclRule.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
                this.ruleId = (String) Preconditions.checkNotNull(str2, "Required parameter ruleId must be specified.");
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            public String getRuleId() {
                return this.ruleId;
            }

            public Boolean getSendNotifications() {
                return this.sendNotifications;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Patch set(String str, Object obj) {
                return (Patch) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<AclRule> setAlt2(String str) {
                return (Patch) super.setAlt2(str);
            }

            public Patch setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<AclRule> setFields2(String str) {
                return (Patch) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<AclRule> setKey2(String str) {
                return (Patch) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<AclRule> setOauthToken2(String str) {
                return (Patch) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<AclRule> setPrettyPrint2(Boolean bool) {
                return (Patch) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<AclRule> setQuotaUser2(String str) {
                return (Patch) super.setQuotaUser2(str);
            }

            public Patch setRuleId(String str) {
                this.ruleId = str;
                return this;
            }

            public Patch setSendNotifications(Boolean bool) {
                this.sendNotifications = bool;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<AclRule> setUserIp2(String str) {
                return (Patch) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Update extends CalendarRequest<AclRule> {
            private static final String REST_PATH = "calendars/{calendarId}/acl/{ruleId}";

            @Key
            private String calendarId;

            @Key
            private String ruleId;

            @Key
            private Boolean sendNotifications;

            public Update(String str, String str2, AclRule aclRule) {
                super(Calendar.this, HttpMethods.PUT, REST_PATH, aclRule, AclRule.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
                this.ruleId = (String) Preconditions.checkNotNull(str2, "Required parameter ruleId must be specified.");
                checkRequiredParameter(aclRule, "content");
                checkRequiredParameter(aclRule.getScope(), "AclRule.getScope()");
                checkRequiredParameter(aclRule, "content");
                checkRequiredParameter(aclRule.getScope().getType(), "AclRule.getScope().getType()");
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            public String getRuleId() {
                return this.ruleId;
            }

            public Boolean getSendNotifications() {
                return this.sendNotifications;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<AclRule> setAlt2(String str) {
                return (Update) super.setAlt2(str);
            }

            public Update setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<AclRule> setFields2(String str) {
                return (Update) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<AclRule> setKey2(String str) {
                return (Update) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<AclRule> setOauthToken2(String str) {
                return (Update) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<AclRule> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<AclRule> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser2(str);
            }

            public Update setRuleId(String str) {
                this.ruleId = str;
                return this;
            }

            public Update setSendNotifications(Boolean bool) {
                this.sendNotifications = bool;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<AclRule> setUserIp2(String str) {
                return (Update) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Watch extends CalendarRequest<Channel> {
            private static final String REST_PATH = "calendars/{calendarId}/acl/watch";

            @Key
            private String calendarId;

            @Key
            private Integer maxResults;

            @Key
            private String pageToken;

            @Key
            private Boolean showDeleted;

            @Key
            private String syncToken;

            public Watch(String str, Channel channel) {
                super(Calendar.this, HttpMethods.POST, REST_PATH, channel, Channel.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            public Integer getMaxResults() {
                return this.maxResults;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public Boolean getShowDeleted() {
                return this.showDeleted;
            }

            public String getSyncToken() {
                return this.syncToken;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Watch set(String str, Object obj) {
                return (Watch) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<Channel> setAlt2(String str) {
                return (Watch) super.setAlt2(str);
            }

            public Watch setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<Channel> setFields2(String str) {
                return (Watch) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<Channel> setKey2(String str) {
                return (Watch) super.setKey2(str);
            }

            public Watch setMaxResults(Integer num) {
                this.maxResults = num;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<Channel> setOauthToken2(String str) {
                return (Watch) super.setOauthToken2(str);
            }

            public Watch setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<Channel> setPrettyPrint2(Boolean bool) {
                return (Watch) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<Channel> setQuotaUser2(String str) {
                return (Watch) super.setQuotaUser2(str);
            }

            public Watch setShowDeleted(Boolean bool) {
                this.showDeleted = bool;
                return this;
            }

            public Watch setSyncToken(String str) {
                this.syncToken = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<Channel> setUserIp2(String str) {
                return (Watch) super.setUserIp2(str);
            }
        }

        public Acl() {
        }

        public Delete delete(String str, String str2) {
            Delete delete = new Delete(str, str2);
            Calendar.this.initialize(delete);
            return delete;
        }

        public Get get(String str, String str2) {
            Get get = new Get(str, str2);
            Calendar.this.initialize(get);
            return get;
        }

        public Insert insert(String str, AclRule aclRule) {
            Insert insert = new Insert(str, aclRule);
            Calendar.this.initialize(insert);
            return insert;
        }

        public List list(String str) {
            List list = new List(str);
            Calendar.this.initialize(list);
            return list;
        }

        public Patch patch(String str, String str2, AclRule aclRule) {
            Patch patch = new Patch(str, str2, aclRule);
            Calendar.this.initialize(patch);
            return patch;
        }

        public Update update(String str, String str2, AclRule aclRule) {
            Update update = new Update(str, str2, aclRule);
            Calendar.this.initialize(update);
            return update;
        }

        public Watch watch(String str, Channel channel) {
            Watch watch = new Watch(str, channel);
            Calendar.this.initialize(watch);
            return watch;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static final class Builder extends AbstractGoogleJsonClient.Builder {
        public Builder(HttpTransport httpTransport, JsonFactory jsonFactory, HttpRequestInitializer httpRequestInitializer) {
            super(httpTransport, jsonFactory, chooseEndpoint(httpTransport), Calendar.DEFAULT_SERVICE_PATH, httpRequestInitializer, false);
            setBatchPath(Calendar.DEFAULT_BATCH_PATH);
        }

        private static String chooseEndpoint(HttpTransport httpTransport) {
            String str = System.getenv("GOOGLE_API_USE_MTLS_ENDPOINT");
            if (str == null) {
                str = "auto";
            }
            return !"always".equals(str) ? ("auto".equals(str) && httpTransport != null && httpTransport.isMtls()) ? Calendar.DEFAULT_MTLS_ROOT_URL : Calendar.DEFAULT_ROOT_URL : Calendar.DEFAULT_MTLS_ROOT_URL;
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Calendar build() {
            return new Calendar(this);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setApplicationName(String str) {
            return (Builder) super.setApplicationName(str);
        }

        @Override // com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setBatchPath(String str) {
            return (Builder) super.setBatchPath(str);
        }

        public Builder setCalendarRequestInitializer(CalendarRequestInitializer calendarRequestInitializer) {
            return (Builder) super.setGoogleClientRequestInitializer((GoogleClientRequestInitializer) calendarRequestInitializer);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setGoogleClientRequestInitializer(GoogleClientRequestInitializer googleClientRequestInitializer) {
            return (Builder) super.setGoogleClientRequestInitializer(googleClientRequestInitializer);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setHttpRequestInitializer(HttpRequestInitializer httpRequestInitializer) {
            return (Builder) super.setHttpRequestInitializer(httpRequestInitializer);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setRootUrl(String str) {
            return (Builder) super.setRootUrl(str);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setServicePath(String str) {
            return (Builder) super.setServicePath(str);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setSuppressAllChecks(boolean z) {
            return (Builder) super.setSuppressAllChecks(z);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setSuppressPatternChecks(boolean z) {
            return (Builder) super.setSuppressPatternChecks(z);
        }

        @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder, com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setSuppressRequiredParameterChecks(boolean z) {
            return (Builder) super.setSuppressRequiredParameterChecks(z);
        }

        @Override // com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setUniverseDomain(String str) {
            return (Builder) super.setUniverseDomain(str);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public class CalendarList {

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Delete extends CalendarRequest<Void> {
            private static final String REST_PATH = "users/me/calendarList/{calendarId}";

            @Key
            private String calendarId;

            public Delete(String str) {
                super(Calendar.this, HttpMethods.DELETE, REST_PATH, null, Void.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt2(str);
            }

            public Delete setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<Void> setFields2(String str) {
                return (Delete) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<Void> setKey2(String str) {
                return (Delete) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Get extends CalendarRequest<CalendarListEntry> {
            private static final String REST_PATH = "users/me/calendarList/{calendarId}";

            @Key
            private String calendarId;

            public Get(String str) {
                super(Calendar.this, HttpMethods.GET, REST_PATH, null, CalendarListEntry.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Get set(String str, Object obj) {
                return (Get) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<CalendarListEntry> setAlt2(String str) {
                return (Get) super.setAlt2(str);
            }

            public Get setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<CalendarListEntry> setFields2(String str) {
                return (Get) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<CalendarListEntry> setKey2(String str) {
                return (Get) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<CalendarListEntry> setOauthToken2(String str) {
                return (Get) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<CalendarListEntry> setPrettyPrint2(Boolean bool) {
                return (Get) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<CalendarListEntry> setQuotaUser2(String str) {
                return (Get) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<CalendarListEntry> setUserIp2(String str) {
                return (Get) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Insert extends CalendarRequest<CalendarListEntry> {
            private static final String REST_PATH = "users/me/calendarList";

            @Key
            private Boolean colorRgbFormat;

            public Insert(CalendarListEntry calendarListEntry) {
                super(Calendar.this, HttpMethods.POST, REST_PATH, calendarListEntry, CalendarListEntry.class);
                checkRequiredParameter(calendarListEntry, "content");
                checkRequiredParameter(calendarListEntry.getId(), "CalendarListEntry.getId()");
            }

            public Boolean getColorRgbFormat() {
                return this.colorRgbFormat;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<CalendarListEntry> setAlt2(String str) {
                return (Insert) super.setAlt2(str);
            }

            public Insert setColorRgbFormat(Boolean bool) {
                this.colorRgbFormat = bool;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<CalendarListEntry> setFields2(String str) {
                return (Insert) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<CalendarListEntry> setKey2(String str) {
                return (Insert) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<CalendarListEntry> setOauthToken2(String str) {
                return (Insert) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<CalendarListEntry> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<CalendarListEntry> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<CalendarListEntry> setUserIp2(String str) {
                return (Insert) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class List extends CalendarRequest<com.google.api.services.calendar.model.CalendarList> {
            private static final String REST_PATH = "users/me/calendarList";

            @Key
            private Integer maxResults;

            @Key
            private String minAccessRole;

            @Key
            private String pageToken;

            @Key
            private Boolean showDeleted;

            @Key
            private Boolean showHidden;

            @Key
            private String syncToken;

            public List() {
                super(Calendar.this, HttpMethods.GET, REST_PATH, null, com.google.api.services.calendar.model.CalendarList.class);
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            public Integer getMaxResults() {
                return this.maxResults;
            }

            public String getMinAccessRole() {
                return this.minAccessRole;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public Boolean getShowDeleted() {
                return this.showDeleted;
            }

            public Boolean getShowHidden() {
                return this.showHidden;
            }

            public String getSyncToken() {
                return this.syncToken;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<com.google.api.services.calendar.model.CalendarList> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<com.google.api.services.calendar.model.CalendarList> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<com.google.api.services.calendar.model.CalendarList> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            public List setMaxResults(Integer num) {
                this.maxResults = num;
                return this;
            }

            public List setMinAccessRole(String str) {
                this.minAccessRole = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<com.google.api.services.calendar.model.CalendarList> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<com.google.api.services.calendar.model.CalendarList> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<com.google.api.services.calendar.model.CalendarList> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            public List setShowDeleted(Boolean bool) {
                this.showDeleted = bool;
                return this;
            }

            public List setShowHidden(Boolean bool) {
                this.showHidden = bool;
                return this;
            }

            public List setSyncToken(String str) {
                this.syncToken = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<com.google.api.services.calendar.model.CalendarList> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Patch extends CalendarRequest<CalendarListEntry> {
            private static final String REST_PATH = "users/me/calendarList/{calendarId}";

            @Key
            private String calendarId;

            @Key
            private Boolean colorRgbFormat;

            public Patch(String str, CalendarListEntry calendarListEntry) {
                super(Calendar.this, HttpMethods.PATCH, REST_PATH, calendarListEntry, CalendarListEntry.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            public Boolean getColorRgbFormat() {
                return this.colorRgbFormat;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Patch set(String str, Object obj) {
                return (Patch) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<CalendarListEntry> setAlt2(String str) {
                return (Patch) super.setAlt2(str);
            }

            public Patch setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            public Patch setColorRgbFormat(Boolean bool) {
                this.colorRgbFormat = bool;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<CalendarListEntry> setFields2(String str) {
                return (Patch) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<CalendarListEntry> setKey2(String str) {
                return (Patch) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<CalendarListEntry> setOauthToken2(String str) {
                return (Patch) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<CalendarListEntry> setPrettyPrint2(Boolean bool) {
                return (Patch) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<CalendarListEntry> setQuotaUser2(String str) {
                return (Patch) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<CalendarListEntry> setUserIp2(String str) {
                return (Patch) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Update extends CalendarRequest<CalendarListEntry> {
            private static final String REST_PATH = "users/me/calendarList/{calendarId}";

            @Key
            private String calendarId;

            @Key
            private Boolean colorRgbFormat;

            public Update(String str, CalendarListEntry calendarListEntry) {
                super(Calendar.this, HttpMethods.PUT, REST_PATH, calendarListEntry, CalendarListEntry.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            public Boolean getColorRgbFormat() {
                return this.colorRgbFormat;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<CalendarListEntry> setAlt2(String str) {
                return (Update) super.setAlt2(str);
            }

            public Update setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            public Update setColorRgbFormat(Boolean bool) {
                this.colorRgbFormat = bool;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<CalendarListEntry> setFields2(String str) {
                return (Update) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<CalendarListEntry> setKey2(String str) {
                return (Update) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<CalendarListEntry> setOauthToken2(String str) {
                return (Update) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<CalendarListEntry> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<CalendarListEntry> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<CalendarListEntry> setUserIp2(String str) {
                return (Update) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Watch extends CalendarRequest<Channel> {
            private static final String REST_PATH = "users/me/calendarList/watch";

            @Key
            private Integer maxResults;

            @Key
            private String minAccessRole;

            @Key
            private String pageToken;

            @Key
            private Boolean showDeleted;

            @Key
            private Boolean showHidden;

            @Key
            private String syncToken;

            public Watch(Channel channel) {
                super(Calendar.this, HttpMethods.POST, REST_PATH, channel, Channel.class);
            }

            public Integer getMaxResults() {
                return this.maxResults;
            }

            public String getMinAccessRole() {
                return this.minAccessRole;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public Boolean getShowDeleted() {
                return this.showDeleted;
            }

            public Boolean getShowHidden() {
                return this.showHidden;
            }

            public String getSyncToken() {
                return this.syncToken;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Watch set(String str, Object obj) {
                return (Watch) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<Channel> setAlt2(String str) {
                return (Watch) super.setAlt2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<Channel> setFields2(String str) {
                return (Watch) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<Channel> setKey2(String str) {
                return (Watch) super.setKey2(str);
            }

            public Watch setMaxResults(Integer num) {
                this.maxResults = num;
                return this;
            }

            public Watch setMinAccessRole(String str) {
                this.minAccessRole = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<Channel> setOauthToken2(String str) {
                return (Watch) super.setOauthToken2(str);
            }

            public Watch setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<Channel> setPrettyPrint2(Boolean bool) {
                return (Watch) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<Channel> setQuotaUser2(String str) {
                return (Watch) super.setQuotaUser2(str);
            }

            public Watch setShowDeleted(Boolean bool) {
                this.showDeleted = bool;
                return this;
            }

            public Watch setShowHidden(Boolean bool) {
                this.showHidden = bool;
                return this;
            }

            public Watch setSyncToken(String str) {
                this.syncToken = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<Channel> setUserIp2(String str) {
                return (Watch) super.setUserIp2(str);
            }
        }

        public CalendarList() {
        }

        public Delete delete(String str) {
            Delete delete = new Delete(str);
            Calendar.this.initialize(delete);
            return delete;
        }

        public Get get(String str) {
            Get get = new Get(str);
            Calendar.this.initialize(get);
            return get;
        }

        public Insert insert(CalendarListEntry calendarListEntry) {
            Insert insert = new Insert(calendarListEntry);
            Calendar.this.initialize(insert);
            return insert;
        }

        public List list() {
            List list = new List();
            Calendar.this.initialize(list);
            return list;
        }

        public Patch patch(String str, CalendarListEntry calendarListEntry) {
            Patch patch = new Patch(str, calendarListEntry);
            Calendar.this.initialize(patch);
            return patch;
        }

        public Update update(String str, CalendarListEntry calendarListEntry) {
            Update update = new Update(str, calendarListEntry);
            Calendar.this.initialize(update);
            return update;
        }

        public Watch watch(Channel channel) {
            Watch watch = new Watch(channel);
            Calendar.this.initialize(watch);
            return watch;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public class Calendars {

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Clear extends CalendarRequest<Void> {
            private static final String REST_PATH = "calendars/{calendarId}/clear";

            @Key
            private String calendarId;

            public Clear(String str) {
                super(Calendar.this, HttpMethods.POST, REST_PATH, null, Void.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Clear set(String str, Object obj) {
                return (Clear) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<Void> setAlt2(String str) {
                return (Clear) super.setAlt2(str);
            }

            public Clear setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<Void> setFields2(String str) {
                return (Clear) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<Void> setKey2(String str) {
                return (Clear) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<Void> setOauthToken2(String str) {
                return (Clear) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Clear) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<Void> setQuotaUser2(String str) {
                return (Clear) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<Void> setUserIp2(String str) {
                return (Clear) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Delete extends CalendarRequest<Void> {
            private static final String REST_PATH = "calendars/{calendarId}";

            @Key
            private String calendarId;

            public Delete(String str) {
                super(Calendar.this, HttpMethods.DELETE, REST_PATH, null, Void.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt2(str);
            }

            public Delete setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<Void> setFields2(String str) {
                return (Delete) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<Void> setKey2(String str) {
                return (Delete) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Get extends CalendarRequest<com.google.api.services.calendar.model.Calendar> {
            private static final String REST_PATH = "calendars/{calendarId}";

            @Key
            private String calendarId;

            public Get(String str) {
                super(Calendar.this, HttpMethods.GET, REST_PATH, null, com.google.api.services.calendar.model.Calendar.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Get set(String str, Object obj) {
                return (Get) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setAlt2(String str) {
                return (Get) super.setAlt2(str);
            }

            public Get setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setFields2(String str) {
                return (Get) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setKey2(String str) {
                return (Get) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setOauthToken2(String str) {
                return (Get) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setPrettyPrint2(Boolean bool) {
                return (Get) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setQuotaUser2(String str) {
                return (Get) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setUserIp2(String str) {
                return (Get) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Insert extends CalendarRequest<com.google.api.services.calendar.model.Calendar> {
            private static final String REST_PATH = "calendars";

            public Insert(com.google.api.services.calendar.model.Calendar calendar) {
                super(Calendar.this, HttpMethods.POST, REST_PATH, calendar, com.google.api.services.calendar.model.Calendar.class);
                checkRequiredParameter(calendar, "content");
                checkRequiredParameter(calendar.getSummary(), "Calendar.getSummary()");
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setAlt2(String str) {
                return (Insert) super.setAlt2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setFields2(String str) {
                return (Insert) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setKey2(String str) {
                return (Insert) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setOauthToken2(String str) {
                return (Insert) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setUserIp2(String str) {
                return (Insert) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Patch extends CalendarRequest<com.google.api.services.calendar.model.Calendar> {
            private static final String REST_PATH = "calendars/{calendarId}";

            @Key
            private String calendarId;

            public Patch(String str, com.google.api.services.calendar.model.Calendar calendar) {
                super(Calendar.this, HttpMethods.PATCH, REST_PATH, calendar, com.google.api.services.calendar.model.Calendar.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Patch set(String str, Object obj) {
                return (Patch) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setAlt2(String str) {
                return (Patch) super.setAlt2(str);
            }

            public Patch setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setFields2(String str) {
                return (Patch) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setKey2(String str) {
                return (Patch) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setOauthToken2(String str) {
                return (Patch) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setPrettyPrint2(Boolean bool) {
                return (Patch) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setQuotaUser2(String str) {
                return (Patch) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setUserIp2(String str) {
                return (Patch) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Update extends CalendarRequest<com.google.api.services.calendar.model.Calendar> {
            private static final String REST_PATH = "calendars/{calendarId}";

            @Key
            private String calendarId;

            public Update(String str, com.google.api.services.calendar.model.Calendar calendar) {
                super(Calendar.this, HttpMethods.PUT, REST_PATH, calendar, com.google.api.services.calendar.model.Calendar.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setAlt2(String str) {
                return (Update) super.setAlt2(str);
            }

            public Update setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setFields2(String str) {
                return (Update) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setKey2(String str) {
                return (Update) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setOauthToken2(String str) {
                return (Update) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<com.google.api.services.calendar.model.Calendar> setUserIp2(String str) {
                return (Update) super.setUserIp2(str);
            }
        }

        public Calendars() {
        }

        public Clear clear(String str) {
            Clear clear = new Clear(str);
            Calendar.this.initialize(clear);
            return clear;
        }

        public Delete delete(String str) {
            Delete delete = new Delete(str);
            Calendar.this.initialize(delete);
            return delete;
        }

        public Get get(String str) {
            Get get = new Get(str);
            Calendar.this.initialize(get);
            return get;
        }

        public Insert insert(com.google.api.services.calendar.model.Calendar calendar) {
            Insert insert = new Insert(calendar);
            Calendar.this.initialize(insert);
            return insert;
        }

        public Patch patch(String str, com.google.api.services.calendar.model.Calendar calendar) {
            Patch patch = new Patch(str, calendar);
            Calendar.this.initialize(patch);
            return patch;
        }

        public Update update(String str, com.google.api.services.calendar.model.Calendar calendar) {
            Update update = new Update(str, calendar);
            Calendar.this.initialize(update);
            return update;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public class Channels {

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Stop extends CalendarRequest<Void> {
            private static final String REST_PATH = "channels/stop";

            public Stop(Channel channel) {
                super(Calendar.this, HttpMethods.POST, REST_PATH, channel, Void.class);
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Stop set(String str, Object obj) {
                return (Stop) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<Void> setAlt2(String str) {
                return (Stop) super.setAlt2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<Void> setFields2(String str) {
                return (Stop) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<Void> setKey2(String str) {
                return (Stop) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<Void> setOauthToken2(String str) {
                return (Stop) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Stop) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<Void> setQuotaUser2(String str) {
                return (Stop) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<Void> setUserIp2(String str) {
                return (Stop) super.setUserIp2(str);
            }
        }

        public Channels() {
        }

        public Stop stop(Channel channel) {
            Stop stop = new Stop(channel);
            Calendar.this.initialize(stop);
            return stop;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public class Colors {

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Get extends CalendarRequest<com.google.api.services.calendar.model.Colors> {
            private static final String REST_PATH = "colors";

            public Get() {
                super(Calendar.this, HttpMethods.GET, REST_PATH, null, com.google.api.services.calendar.model.Colors.class);
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Get set(String str, Object obj) {
                return (Get) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<com.google.api.services.calendar.model.Colors> setAlt2(String str) {
                return (Get) super.setAlt2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<com.google.api.services.calendar.model.Colors> setFields2(String str) {
                return (Get) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<com.google.api.services.calendar.model.Colors> setKey2(String str) {
                return (Get) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<com.google.api.services.calendar.model.Colors> setOauthToken2(String str) {
                return (Get) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<com.google.api.services.calendar.model.Colors> setPrettyPrint2(Boolean bool) {
                return (Get) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<com.google.api.services.calendar.model.Colors> setQuotaUser2(String str) {
                return (Get) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<com.google.api.services.calendar.model.Colors> setUserIp2(String str) {
                return (Get) super.setUserIp2(str);
            }
        }

        public Colors() {
        }

        public Get get() {
            Get get = new Get();
            Calendar.this.initialize(get);
            return get;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public class Events {

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class CalendarImport extends CalendarRequest<Event> {
            private static final String REST_PATH = "calendars/{calendarId}/events/import";

            @Key
            private String calendarId;

            @Key
            private Integer conferenceDataVersion;

            @Key
            private Boolean supportsAttachments;

            public CalendarImport(String str, Event event) {
                super(Calendar.this, HttpMethods.POST, REST_PATH, event, Event.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
                checkRequiredParameter(event, "content");
                checkRequiredParameter(event.getICalUID(), "Event.getICalUID()");
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            public Integer getConferenceDataVersion() {
                return this.conferenceDataVersion;
            }

            public Boolean getSupportsAttachments() {
                return this.supportsAttachments;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public CalendarImport set(String str, Object obj) {
                return (CalendarImport) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<Event> setAlt2(String str) {
                return (CalendarImport) super.setAlt2(str);
            }

            public CalendarImport setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            public CalendarImport setConferenceDataVersion(Integer num) {
                this.conferenceDataVersion = num;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<Event> setFields2(String str) {
                return (CalendarImport) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<Event> setKey2(String str) {
                return (CalendarImport) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<Event> setOauthToken2(String str) {
                return (CalendarImport) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<Event> setPrettyPrint2(Boolean bool) {
                return (CalendarImport) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<Event> setQuotaUser2(String str) {
                return (CalendarImport) super.setQuotaUser2(str);
            }

            public CalendarImport setSupportsAttachments(Boolean bool) {
                this.supportsAttachments = bool;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<Event> setUserIp2(String str) {
                return (CalendarImport) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Delete extends CalendarRequest<Void> {
            private static final String REST_PATH = "calendars/{calendarId}/events/{eventId}";

            @Key
            private String calendarId;

            @Key
            private String eventId;

            @Key
            private Boolean sendNotifications;

            @Key
            private String sendUpdates;

            public Delete(String str, String str2) {
                super(Calendar.this, HttpMethods.DELETE, REST_PATH, null, Void.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
                this.eventId = (String) Preconditions.checkNotNull(str2, "Required parameter eventId must be specified.");
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            public String getEventId() {
                return this.eventId;
            }

            public Boolean getSendNotifications() {
                return this.sendNotifications;
            }

            public String getSendUpdates() {
                return this.sendUpdates;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Delete set(String str, Object obj) {
                return (Delete) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<Void> setAlt2(String str) {
                return (Delete) super.setAlt2(str);
            }

            public Delete setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            public Delete setEventId(String str) {
                this.eventId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<Void> setFields2(String str) {
                return (Delete) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<Void> setKey2(String str) {
                return (Delete) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<Void> setOauthToken2(String str) {
                return (Delete) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<Void> setPrettyPrint2(Boolean bool) {
                return (Delete) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<Void> setQuotaUser2(String str) {
                return (Delete) super.setQuotaUser2(str);
            }

            public Delete setSendNotifications(Boolean bool) {
                this.sendNotifications = bool;
                return this;
            }

            public Delete setSendUpdates(String str) {
                this.sendUpdates = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<Void> setUserIp2(String str) {
                return (Delete) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Get extends CalendarRequest<Event> {
            private static final String REST_PATH = "calendars/{calendarId}/events/{eventId}";

            @Key
            private Boolean alwaysIncludeEmail;

            @Key
            private String calendarId;

            @Key
            private String eventId;

            @Key
            private Integer maxAttendees;

            @Key
            private String timeZone;

            public Get(String str, String str2) {
                super(Calendar.this, HttpMethods.GET, REST_PATH, null, Event.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
                this.eventId = (String) Preconditions.checkNotNull(str2, "Required parameter eventId must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            public Boolean getAlwaysIncludeEmail() {
                return this.alwaysIncludeEmail;
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            public String getEventId() {
                return this.eventId;
            }

            public Integer getMaxAttendees() {
                return this.maxAttendees;
            }

            public String getTimeZone() {
                return this.timeZone;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Get set(String str, Object obj) {
                return (Get) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<Event> setAlt2(String str) {
                return (Get) super.setAlt2(str);
            }

            public Get setAlwaysIncludeEmail(Boolean bool) {
                this.alwaysIncludeEmail = bool;
                return this;
            }

            public Get setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            public Get setEventId(String str) {
                this.eventId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<Event> setFields2(String str) {
                return (Get) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<Event> setKey2(String str) {
                return (Get) super.setKey2(str);
            }

            public Get setMaxAttendees(Integer num) {
                this.maxAttendees = num;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<Event> setOauthToken2(String str) {
                return (Get) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<Event> setPrettyPrint2(Boolean bool) {
                return (Get) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<Event> setQuotaUser2(String str) {
                return (Get) super.setQuotaUser2(str);
            }

            public Get setTimeZone(String str) {
                this.timeZone = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<Event> setUserIp2(String str) {
                return (Get) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Insert extends CalendarRequest<Event> {
            private static final String REST_PATH = "calendars/{calendarId}/events";

            @Key
            private String calendarId;

            @Key
            private Integer conferenceDataVersion;

            @Key
            private Integer maxAttendees;

            @Key
            private Boolean sendNotifications;

            @Key
            private String sendUpdates;

            @Key
            private Boolean supportsAttachments;

            public Insert(String str, Event event) {
                super(Calendar.this, HttpMethods.POST, REST_PATH, event, Event.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            public Integer getConferenceDataVersion() {
                return this.conferenceDataVersion;
            }

            public Integer getMaxAttendees() {
                return this.maxAttendees;
            }

            public Boolean getSendNotifications() {
                return this.sendNotifications;
            }

            public String getSendUpdates() {
                return this.sendUpdates;
            }

            public Boolean getSupportsAttachments() {
                return this.supportsAttachments;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Insert set(String str, Object obj) {
                return (Insert) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<Event> setAlt2(String str) {
                return (Insert) super.setAlt2(str);
            }

            public Insert setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            public Insert setConferenceDataVersion(Integer num) {
                this.conferenceDataVersion = num;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<Event> setFields2(String str) {
                return (Insert) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<Event> setKey2(String str) {
                return (Insert) super.setKey2(str);
            }

            public Insert setMaxAttendees(Integer num) {
                this.maxAttendees = num;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<Event> setOauthToken2(String str) {
                return (Insert) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<Event> setPrettyPrint2(Boolean bool) {
                return (Insert) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<Event> setQuotaUser2(String str) {
                return (Insert) super.setQuotaUser2(str);
            }

            public Insert setSendNotifications(Boolean bool) {
                this.sendNotifications = bool;
                return this;
            }

            public Insert setSendUpdates(String str) {
                this.sendUpdates = str;
                return this;
            }

            public Insert setSupportsAttachments(Boolean bool) {
                this.supportsAttachments = bool;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<Event> setUserIp2(String str) {
                return (Insert) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Instances extends CalendarRequest<com.google.api.services.calendar.model.Events> {
            private static final String REST_PATH = "calendars/{calendarId}/events/{eventId}/instances";

            @Key
            private Boolean alwaysIncludeEmail;

            @Key
            private String calendarId;

            @Key
            private String eventId;

            @Key
            private Integer maxAttendees;

            @Key
            private Integer maxResults;

            @Key
            private String originalStart;

            @Key
            private String pageToken;

            @Key
            private Boolean showDeleted;

            @Key
            private DateTime timeMax;

            @Key
            private DateTime timeMin;

            @Key
            private String timeZone;

            public Instances(String str, String str2) {
                super(Calendar.this, HttpMethods.GET, REST_PATH, null, com.google.api.services.calendar.model.Events.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
                this.eventId = (String) Preconditions.checkNotNull(str2, "Required parameter eventId must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            public Boolean getAlwaysIncludeEmail() {
                return this.alwaysIncludeEmail;
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            public String getEventId() {
                return this.eventId;
            }

            public Integer getMaxAttendees() {
                return this.maxAttendees;
            }

            public Integer getMaxResults() {
                return this.maxResults;
            }

            public String getOriginalStart() {
                return this.originalStart;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public Boolean getShowDeleted() {
                return this.showDeleted;
            }

            public DateTime getTimeMax() {
                return this.timeMax;
            }

            public DateTime getTimeMin() {
                return this.timeMin;
            }

            public String getTimeZone() {
                return this.timeZone;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Instances set(String str, Object obj) {
                return (Instances) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<com.google.api.services.calendar.model.Events> setAlt2(String str) {
                return (Instances) super.setAlt2(str);
            }

            public Instances setAlwaysIncludeEmail(Boolean bool) {
                this.alwaysIncludeEmail = bool;
                return this;
            }

            public Instances setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            public Instances setEventId(String str) {
                this.eventId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<com.google.api.services.calendar.model.Events> setFields2(String str) {
                return (Instances) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<com.google.api.services.calendar.model.Events> setKey2(String str) {
                return (Instances) super.setKey2(str);
            }

            public Instances setMaxAttendees(Integer num) {
                this.maxAttendees = num;
                return this;
            }

            public Instances setMaxResults(Integer num) {
                this.maxResults = num;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<com.google.api.services.calendar.model.Events> setOauthToken2(String str) {
                return (Instances) super.setOauthToken2(str);
            }

            public Instances setOriginalStart(String str) {
                this.originalStart = str;
                return this;
            }

            public Instances setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<com.google.api.services.calendar.model.Events> setPrettyPrint2(Boolean bool) {
                return (Instances) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<com.google.api.services.calendar.model.Events> setQuotaUser2(String str) {
                return (Instances) super.setQuotaUser2(str);
            }

            public Instances setShowDeleted(Boolean bool) {
                this.showDeleted = bool;
                return this;
            }

            public Instances setTimeMax(DateTime dateTime) {
                this.timeMax = dateTime;
                return this;
            }

            public Instances setTimeMin(DateTime dateTime) {
                this.timeMin = dateTime;
                return this;
            }

            public Instances setTimeZone(String str) {
                this.timeZone = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<com.google.api.services.calendar.model.Events> setUserIp2(String str) {
                return (Instances) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class List extends CalendarRequest<com.google.api.services.calendar.model.Events> {
            private static final String REST_PATH = "calendars/{calendarId}/events";

            @Key
            private Boolean alwaysIncludeEmail;

            @Key
            private String calendarId;

            @Key
            private java.util.List<String> eventTypes;

            @Key
            private String iCalUID;

            @Key
            private Integer maxAttendees;

            @Key
            private Integer maxResults;

            @Key
            private String orderBy;

            @Key
            private String pageToken;

            @Key
            private java.util.List<String> privateExtendedProperty;

            @Key
            private String q;

            @Key
            private java.util.List<String> sharedExtendedProperty;

            @Key
            private Boolean showDeleted;

            @Key
            private Boolean showHiddenInvitations;

            @Key
            private Boolean singleEvents;

            @Key
            private String syncToken;

            @Key
            private DateTime timeMax;

            @Key
            private DateTime timeMin;

            @Key
            private String timeZone;

            @Key
            private DateTime updatedMin;

            public List(String str) {
                super(Calendar.this, HttpMethods.GET, REST_PATH, null, com.google.api.services.calendar.model.Events.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            public Boolean getAlwaysIncludeEmail() {
                return this.alwaysIncludeEmail;
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            public java.util.List<String> getEventTypes() {
                return this.eventTypes;
            }

            public String getICalUID() {
                return this.iCalUID;
            }

            public Integer getMaxAttendees() {
                return this.maxAttendees;
            }

            public Integer getMaxResults() {
                return this.maxResults;
            }

            public String getOrderBy() {
                return this.orderBy;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public java.util.List<String> getPrivateExtendedProperty() {
                return this.privateExtendedProperty;
            }

            public String getQ() {
                return this.q;
            }

            public java.util.List<String> getSharedExtendedProperty() {
                return this.sharedExtendedProperty;
            }

            public Boolean getShowDeleted() {
                return this.showDeleted;
            }

            public Boolean getShowHiddenInvitations() {
                return this.showHiddenInvitations;
            }

            public Boolean getSingleEvents() {
                return this.singleEvents;
            }

            public String getSyncToken() {
                return this.syncToken;
            }

            public DateTime getTimeMax() {
                return this.timeMax;
            }

            public DateTime getTimeMin() {
                return this.timeMin;
            }

            public String getTimeZone() {
                return this.timeZone;
            }

            public DateTime getUpdatedMin() {
                return this.updatedMin;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<com.google.api.services.calendar.model.Events> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            public List setAlwaysIncludeEmail(Boolean bool) {
                this.alwaysIncludeEmail = bool;
                return this;
            }

            public List setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            public List setEventTypes(java.util.List<String> list) {
                this.eventTypes = list;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<com.google.api.services.calendar.model.Events> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            public List setICalUID(String str) {
                this.iCalUID = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<com.google.api.services.calendar.model.Events> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            public List setMaxAttendees(Integer num) {
                this.maxAttendees = num;
                return this;
            }

            public List setMaxResults(Integer num) {
                this.maxResults = num;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<com.google.api.services.calendar.model.Events> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            public List setOrderBy(String str) {
                this.orderBy = str;
                return this;
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<com.google.api.services.calendar.model.Events> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            public List setPrivateExtendedProperty(java.util.List<String> list) {
                this.privateExtendedProperty = list;
                return this;
            }

            public List setQ(String str) {
                this.q = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<com.google.api.services.calendar.model.Events> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            public List setSharedExtendedProperty(java.util.List<String> list) {
                this.sharedExtendedProperty = list;
                return this;
            }

            public List setShowDeleted(Boolean bool) {
                this.showDeleted = bool;
                return this;
            }

            public List setShowHiddenInvitations(Boolean bool) {
                this.showHiddenInvitations = bool;
                return this;
            }

            public List setSingleEvents(Boolean bool) {
                this.singleEvents = bool;
                return this;
            }

            public List setSyncToken(String str) {
                this.syncToken = str;
                return this;
            }

            public List setTimeMax(DateTime dateTime) {
                this.timeMax = dateTime;
                return this;
            }

            public List setTimeMin(DateTime dateTime) {
                this.timeMin = dateTime;
                return this;
            }

            public List setTimeZone(String str) {
                this.timeZone = str;
                return this;
            }

            public List setUpdatedMin(DateTime dateTime) {
                this.updatedMin = dateTime;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<com.google.api.services.calendar.model.Events> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Move extends CalendarRequest<Event> {
            private static final String REST_PATH = "calendars/{calendarId}/events/{eventId}/move";

            @Key
            private String calendarId;

            @Key
            private String destination;

            @Key
            private String eventId;

            @Key
            private Boolean sendNotifications;

            @Key
            private String sendUpdates;

            public Move(String str, String str2, String str3) {
                super(Calendar.this, HttpMethods.POST, REST_PATH, null, Event.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
                this.eventId = (String) Preconditions.checkNotNull(str2, "Required parameter eventId must be specified.");
                this.destination = (String) Preconditions.checkNotNull(str3, "Required parameter destination must be specified.");
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            public String getDestination() {
                return this.destination;
            }

            public String getEventId() {
                return this.eventId;
            }

            public Boolean getSendNotifications() {
                return this.sendNotifications;
            }

            public String getSendUpdates() {
                return this.sendUpdates;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Move set(String str, Object obj) {
                return (Move) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<Event> setAlt2(String str) {
                return (Move) super.setAlt2(str);
            }

            public Move setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            public Move setDestination(String str) {
                this.destination = str;
                return this;
            }

            public Move setEventId(String str) {
                this.eventId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<Event> setFields2(String str) {
                return (Move) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<Event> setKey2(String str) {
                return (Move) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<Event> setOauthToken2(String str) {
                return (Move) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<Event> setPrettyPrint2(Boolean bool) {
                return (Move) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<Event> setQuotaUser2(String str) {
                return (Move) super.setQuotaUser2(str);
            }

            public Move setSendNotifications(Boolean bool) {
                this.sendNotifications = bool;
                return this;
            }

            public Move setSendUpdates(String str) {
                this.sendUpdates = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<Event> setUserIp2(String str) {
                return (Move) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Patch extends CalendarRequest<Event> {
            private static final String REST_PATH = "calendars/{calendarId}/events/{eventId}";

            @Key
            private Boolean alwaysIncludeEmail;

            @Key
            private String calendarId;

            @Key
            private Integer conferenceDataVersion;

            @Key
            private String eventId;

            @Key
            private Integer maxAttendees;

            @Key
            private Boolean sendNotifications;

            @Key
            private String sendUpdates;

            @Key
            private Boolean supportsAttachments;

            public Patch(String str, String str2, Event event) {
                super(Calendar.this, HttpMethods.PATCH, REST_PATH, event, Event.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
                this.eventId = (String) Preconditions.checkNotNull(str2, "Required parameter eventId must be specified.");
            }

            public Boolean getAlwaysIncludeEmail() {
                return this.alwaysIncludeEmail;
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            public Integer getConferenceDataVersion() {
                return this.conferenceDataVersion;
            }

            public String getEventId() {
                return this.eventId;
            }

            public Integer getMaxAttendees() {
                return this.maxAttendees;
            }

            public Boolean getSendNotifications() {
                return this.sendNotifications;
            }

            public String getSendUpdates() {
                return this.sendUpdates;
            }

            public Boolean getSupportsAttachments() {
                return this.supportsAttachments;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Patch set(String str, Object obj) {
                return (Patch) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<Event> setAlt2(String str) {
                return (Patch) super.setAlt2(str);
            }

            public Patch setAlwaysIncludeEmail(Boolean bool) {
                this.alwaysIncludeEmail = bool;
                return this;
            }

            public Patch setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            public Patch setConferenceDataVersion(Integer num) {
                this.conferenceDataVersion = num;
                return this;
            }

            public Patch setEventId(String str) {
                this.eventId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<Event> setFields2(String str) {
                return (Patch) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<Event> setKey2(String str) {
                return (Patch) super.setKey2(str);
            }

            public Patch setMaxAttendees(Integer num) {
                this.maxAttendees = num;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<Event> setOauthToken2(String str) {
                return (Patch) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<Event> setPrettyPrint2(Boolean bool) {
                return (Patch) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<Event> setQuotaUser2(String str) {
                return (Patch) super.setQuotaUser2(str);
            }

            public Patch setSendNotifications(Boolean bool) {
                this.sendNotifications = bool;
                return this;
            }

            public Patch setSendUpdates(String str) {
                this.sendUpdates = str;
                return this;
            }

            public Patch setSupportsAttachments(Boolean bool) {
                this.supportsAttachments = bool;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<Event> setUserIp2(String str) {
                return (Patch) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class QuickAdd extends CalendarRequest<Event> {
            private static final String REST_PATH = "calendars/{calendarId}/events/quickAdd";

            @Key
            private String calendarId;

            @Key
            private Boolean sendNotifications;

            @Key
            private String sendUpdates;

            @Key
            private String text;

            public QuickAdd(String str, String str2) {
                super(Calendar.this, HttpMethods.POST, REST_PATH, null, Event.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
                this.text = (String) Preconditions.checkNotNull(str2, "Required parameter text must be specified.");
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            public Boolean getSendNotifications() {
                return this.sendNotifications;
            }

            public String getSendUpdates() {
                return this.sendUpdates;
            }

            public String getText() {
                return this.text;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public QuickAdd set(String str, Object obj) {
                return (QuickAdd) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<Event> setAlt2(String str) {
                return (QuickAdd) super.setAlt2(str);
            }

            public QuickAdd setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<Event> setFields2(String str) {
                return (QuickAdd) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<Event> setKey2(String str) {
                return (QuickAdd) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<Event> setOauthToken2(String str) {
                return (QuickAdd) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<Event> setPrettyPrint2(Boolean bool) {
                return (QuickAdd) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<Event> setQuotaUser2(String str) {
                return (QuickAdd) super.setQuotaUser2(str);
            }

            public QuickAdd setSendNotifications(Boolean bool) {
                this.sendNotifications = bool;
                return this;
            }

            public QuickAdd setSendUpdates(String str) {
                this.sendUpdates = str;
                return this;
            }

            public QuickAdd setText(String str) {
                this.text = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<Event> setUserIp2(String str) {
                return (QuickAdd) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Update extends CalendarRequest<Event> {
            private static final String REST_PATH = "calendars/{calendarId}/events/{eventId}";

            @Key
            private Boolean alwaysIncludeEmail;

            @Key
            private String calendarId;

            @Key
            private Integer conferenceDataVersion;

            @Key
            private String eventId;

            @Key
            private Integer maxAttendees;

            @Key
            private Boolean sendNotifications;

            @Key
            private String sendUpdates;

            @Key
            private Boolean supportsAttachments;

            public Update(String str, String str2, Event event) {
                super(Calendar.this, HttpMethods.PUT, REST_PATH, event, Event.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
                this.eventId = (String) Preconditions.checkNotNull(str2, "Required parameter eventId must be specified.");
            }

            public Boolean getAlwaysIncludeEmail() {
                return this.alwaysIncludeEmail;
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            public Integer getConferenceDataVersion() {
                return this.conferenceDataVersion;
            }

            public String getEventId() {
                return this.eventId;
            }

            public Integer getMaxAttendees() {
                return this.maxAttendees;
            }

            public Boolean getSendNotifications() {
                return this.sendNotifications;
            }

            public String getSendUpdates() {
                return this.sendUpdates;
            }

            public Boolean getSupportsAttachments() {
                return this.supportsAttachments;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Update set(String str, Object obj) {
                return (Update) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<Event> setAlt2(String str) {
                return (Update) super.setAlt2(str);
            }

            public Update setAlwaysIncludeEmail(Boolean bool) {
                this.alwaysIncludeEmail = bool;
                return this;
            }

            public Update setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            public Update setConferenceDataVersion(Integer num) {
                this.conferenceDataVersion = num;
                return this;
            }

            public Update setEventId(String str) {
                this.eventId = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<Event> setFields2(String str) {
                return (Update) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<Event> setKey2(String str) {
                return (Update) super.setKey2(str);
            }

            public Update setMaxAttendees(Integer num) {
                this.maxAttendees = num;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<Event> setOauthToken2(String str) {
                return (Update) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<Event> setPrettyPrint2(Boolean bool) {
                return (Update) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<Event> setQuotaUser2(String str) {
                return (Update) super.setQuotaUser2(str);
            }

            public Update setSendNotifications(Boolean bool) {
                this.sendNotifications = bool;
                return this;
            }

            public Update setSendUpdates(String str) {
                this.sendUpdates = str;
                return this;
            }

            public Update setSupportsAttachments(Boolean bool) {
                this.supportsAttachments = bool;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<Event> setUserIp2(String str) {
                return (Update) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Watch extends CalendarRequest<Channel> {
            private static final String REST_PATH = "calendars/{calendarId}/events/watch";

            @Key
            private Boolean alwaysIncludeEmail;

            @Key
            private String calendarId;

            @Key
            private java.util.List<String> eventTypes;

            @Key
            private String iCalUID;

            @Key
            private Integer maxAttendees;

            @Key
            private Integer maxResults;

            @Key
            private String orderBy;

            @Key
            private String pageToken;

            @Key
            private java.util.List<String> privateExtendedProperty;

            @Key
            private String q;

            @Key
            private java.util.List<String> sharedExtendedProperty;

            @Key
            private Boolean showDeleted;

            @Key
            private Boolean showHiddenInvitations;

            @Key
            private Boolean singleEvents;

            @Key
            private String syncToken;

            @Key
            private DateTime timeMax;

            @Key
            private DateTime timeMin;

            @Key
            private String timeZone;

            @Key
            private DateTime updatedMin;

            public Watch(String str, Channel channel) {
                super(Calendar.this, HttpMethods.POST, REST_PATH, channel, Channel.class);
                this.calendarId = (String) Preconditions.checkNotNull(str, "Required parameter calendarId must be specified.");
            }

            public Boolean getAlwaysIncludeEmail() {
                return this.alwaysIncludeEmail;
            }

            public String getCalendarId() {
                return this.calendarId;
            }

            public java.util.List<String> getEventTypes() {
                return this.eventTypes;
            }

            public String getICalUID() {
                return this.iCalUID;
            }

            public Integer getMaxAttendees() {
                return this.maxAttendees;
            }

            public Integer getMaxResults() {
                return this.maxResults;
            }

            public String getOrderBy() {
                return this.orderBy;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public java.util.List<String> getPrivateExtendedProperty() {
                return this.privateExtendedProperty;
            }

            public String getQ() {
                return this.q;
            }

            public java.util.List<String> getSharedExtendedProperty() {
                return this.sharedExtendedProperty;
            }

            public Boolean getShowDeleted() {
                return this.showDeleted;
            }

            public Boolean getShowHiddenInvitations() {
                return this.showHiddenInvitations;
            }

            public Boolean getSingleEvents() {
                return this.singleEvents;
            }

            public String getSyncToken() {
                return this.syncToken;
            }

            public DateTime getTimeMax() {
                return this.timeMax;
            }

            public DateTime getTimeMin() {
                return this.timeMin;
            }

            public String getTimeZone() {
                return this.timeZone;
            }

            public DateTime getUpdatedMin() {
                return this.updatedMin;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Watch set(String str, Object obj) {
                return (Watch) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<Channel> setAlt2(String str) {
                return (Watch) super.setAlt2(str);
            }

            public Watch setAlwaysIncludeEmail(Boolean bool) {
                this.alwaysIncludeEmail = bool;
                return this;
            }

            public Watch setCalendarId(String str) {
                this.calendarId = str;
                return this;
            }

            public Watch setEventTypes(java.util.List<String> list) {
                this.eventTypes = list;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<Channel> setFields2(String str) {
                return (Watch) super.setFields2(str);
            }

            public Watch setICalUID(String str) {
                this.iCalUID = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<Channel> setKey2(String str) {
                return (Watch) super.setKey2(str);
            }

            public Watch setMaxAttendees(Integer num) {
                this.maxAttendees = num;
                return this;
            }

            public Watch setMaxResults(Integer num) {
                this.maxResults = num;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<Channel> setOauthToken2(String str) {
                return (Watch) super.setOauthToken2(str);
            }

            public Watch setOrderBy(String str) {
                this.orderBy = str;
                return this;
            }

            public Watch setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<Channel> setPrettyPrint2(Boolean bool) {
                return (Watch) super.setPrettyPrint2(bool);
            }

            public Watch setPrivateExtendedProperty(java.util.List<String> list) {
                this.privateExtendedProperty = list;
                return this;
            }

            public Watch setQ(String str) {
                this.q = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<Channel> setQuotaUser2(String str) {
                return (Watch) super.setQuotaUser2(str);
            }

            public Watch setSharedExtendedProperty(java.util.List<String> list) {
                this.sharedExtendedProperty = list;
                return this;
            }

            public Watch setShowDeleted(Boolean bool) {
                this.showDeleted = bool;
                return this;
            }

            public Watch setShowHiddenInvitations(Boolean bool) {
                this.showHiddenInvitations = bool;
                return this;
            }

            public Watch setSingleEvents(Boolean bool) {
                this.singleEvents = bool;
                return this;
            }

            public Watch setSyncToken(String str) {
                this.syncToken = str;
                return this;
            }

            public Watch setTimeMax(DateTime dateTime) {
                this.timeMax = dateTime;
                return this;
            }

            public Watch setTimeMin(DateTime dateTime) {
                this.timeMin = dateTime;
                return this;
            }

            public Watch setTimeZone(String str) {
                this.timeZone = str;
                return this;
            }

            public Watch setUpdatedMin(DateTime dateTime) {
                this.updatedMin = dateTime;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<Channel> setUserIp2(String str) {
                return (Watch) super.setUserIp2(str);
            }
        }

        public Events() {
        }

        public CalendarImport calendarImport(String str, Event event) {
            CalendarImport calendarImport = new CalendarImport(str, event);
            Calendar.this.initialize(calendarImport);
            return calendarImport;
        }

        public Delete delete(String str, String str2) {
            Delete delete = new Delete(str, str2);
            Calendar.this.initialize(delete);
            return delete;
        }

        public Get get(String str, String str2) {
            Get get = new Get(str, str2);
            Calendar.this.initialize(get);
            return get;
        }

        public Insert insert(String str, Event event) {
            Insert insert = new Insert(str, event);
            Calendar.this.initialize(insert);
            return insert;
        }

        public Instances instances(String str, String str2) {
            Instances instances = new Instances(str, str2);
            Calendar.this.initialize(instances);
            return instances;
        }

        public List list(String str) {
            List list = new List(str);
            Calendar.this.initialize(list);
            return list;
        }

        public Move move(String str, String str2, String str3) {
            Move move = new Move(str, str2, str3);
            Calendar.this.initialize(move);
            return move;
        }

        public Patch patch(String str, String str2, Event event) {
            Patch patch = new Patch(str, str2, event);
            Calendar.this.initialize(patch);
            return patch;
        }

        public QuickAdd quickAdd(String str, String str2) {
            QuickAdd quickAdd = new QuickAdd(str, str2);
            Calendar.this.initialize(quickAdd);
            return quickAdd;
        }

        public Update update(String str, String str2, Event event) {
            Update update = new Update(str, str2, event);
            Calendar.this.initialize(update);
            return update;
        }

        public Watch watch(String str, Channel channel) {
            Watch watch = new Watch(str, channel);
            Calendar.this.initialize(watch);
            return watch;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public class Freebusy {

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Query extends CalendarRequest<FreeBusyResponse> {
            private static final String REST_PATH = "freeBusy";

            public Query(FreeBusyRequest freeBusyRequest) {
                super(Calendar.this, HttpMethods.POST, REST_PATH, freeBusyRequest, FreeBusyResponse.class);
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Query set(String str, Object obj) {
                return (Query) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<FreeBusyResponse> setAlt2(String str) {
                return (Query) super.setAlt2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<FreeBusyResponse> setFields2(String str) {
                return (Query) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<FreeBusyResponse> setKey2(String str) {
                return (Query) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<FreeBusyResponse> setOauthToken2(String str) {
                return (Query) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<FreeBusyResponse> setPrettyPrint2(Boolean bool) {
                return (Query) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<FreeBusyResponse> setQuotaUser2(String str) {
                return (Query) super.setQuotaUser2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<FreeBusyResponse> setUserIp2(String str) {
                return (Query) super.setUserIp2(str);
            }
        }

        public Freebusy() {
        }

        public Query query(FreeBusyRequest freeBusyRequest) {
            Query query = new Query(freeBusyRequest);
            Calendar.this.initialize(query);
            return query;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public class Settings {

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Get extends CalendarRequest<Setting> {
            private static final String REST_PATH = "users/me/settings/{setting}";

            @Key
            private String setting;

            public Get(String str) {
                super(Calendar.this, HttpMethods.GET, REST_PATH, null, Setting.class);
                this.setting = (String) Preconditions.checkNotNull(str, "Required parameter setting must be specified.");
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            public String getSetting() {
                return this.setting;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Get set(String str, Object obj) {
                return (Get) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<Setting> setAlt2(String str) {
                return (Get) super.setAlt2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<Setting> setFields2(String str) {
                return (Get) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<Setting> setKey2(String str) {
                return (Get) super.setKey2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<Setting> setOauthToken2(String str) {
                return (Get) super.setOauthToken2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<Setting> setPrettyPrint2(Boolean bool) {
                return (Get) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<Setting> setQuotaUser2(String str) {
                return (Get) super.setQuotaUser2(str);
            }

            public Get setSetting(String str) {
                this.setting = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<Setting> setUserIp2(String str) {
                return (Get) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class List extends CalendarRequest<com.google.api.services.calendar.model.Settings> {
            private static final String REST_PATH = "users/me/settings";

            @Key
            private Integer maxResults;

            @Key
            private String pageToken;

            @Key
            private String syncToken;

            public List() {
                super(Calendar.this, HttpMethods.GET, REST_PATH, null, com.google.api.services.calendar.model.Settings.class);
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpRequest buildHttpRequestUsingHead() {
                return super.buildHttpRequestUsingHead();
            }

            @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
            public HttpResponse executeUsingHead() {
                return super.executeUsingHead();
            }

            public Integer getMaxResults() {
                return this.maxResults;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public String getSyncToken() {
                return this.syncToken;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public List set(String str, Object obj) {
                return (List) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<com.google.api.services.calendar.model.Settings> setAlt2(String str) {
                return (List) super.setAlt2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<com.google.api.services.calendar.model.Settings> setFields2(String str) {
                return (List) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<com.google.api.services.calendar.model.Settings> setKey2(String str) {
                return (List) super.setKey2(str);
            }

            public List setMaxResults(Integer num) {
                this.maxResults = num;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<com.google.api.services.calendar.model.Settings> setOauthToken2(String str) {
                return (List) super.setOauthToken2(str);
            }

            public List setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<com.google.api.services.calendar.model.Settings> setPrettyPrint2(Boolean bool) {
                return (List) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<com.google.api.services.calendar.model.Settings> setQuotaUser2(String str) {
                return (List) super.setQuotaUser2(str);
            }

            public List setSyncToken(String str) {
                this.syncToken = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<com.google.api.services.calendar.model.Settings> setUserIp2(String str) {
                return (List) super.setUserIp2(str);
            }
        }

        /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
        public class Watch extends CalendarRequest<Channel> {
            private static final String REST_PATH = "users/me/settings/watch";

            @Key
            private Integer maxResults;

            @Key
            private String pageToken;

            @Key
            private String syncToken;

            public Watch(Channel channel) {
                super(Calendar.this, HttpMethods.POST, REST_PATH, channel, Channel.class);
            }

            public Integer getMaxResults() {
                return this.maxResults;
            }

            public String getPageToken() {
                return this.pageToken;
            }

            public String getSyncToken() {
                return this.syncToken;
            }

            @Override // com.google.api.services.calendar.CalendarRequest, com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
            public Watch set(String str, Object obj) {
                return (Watch) super.set(str, obj);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setAlt */
            public CalendarRequest<Channel> setAlt2(String str) {
                return (Watch) super.setAlt2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setFields */
            public CalendarRequest<Channel> setFields2(String str) {
                return (Watch) super.setFields2(str);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setKey */
            public CalendarRequest<Channel> setKey2(String str) {
                return (Watch) super.setKey2(str);
            }

            public Watch setMaxResults(Integer num) {
                this.maxResults = num;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setOauthToken */
            public CalendarRequest<Channel> setOauthToken2(String str) {
                return (Watch) super.setOauthToken2(str);
            }

            public Watch setPageToken(String str) {
                this.pageToken = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setPrettyPrint */
            public CalendarRequest<Channel> setPrettyPrint2(Boolean bool) {
                return (Watch) super.setPrettyPrint2(bool);
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setQuotaUser */
            public CalendarRequest<Channel> setQuotaUser2(String str) {
                return (Watch) super.setQuotaUser2(str);
            }

            public Watch setSyncToken(String str) {
                this.syncToken = str;
                return this;
            }

            @Override // com.google.api.services.calendar.CalendarRequest
            /* JADX INFO: renamed from: setUserIp */
            public CalendarRequest<Channel> setUserIp2(String str) {
                return (Watch) super.setUserIp2(str);
            }
        }

        public Settings() {
        }

        public Get get(String str) {
            Get get = new Get(str);
            Calendar.this.initialize(get);
            return get;
        }

        public List list() {
            List list = new List();
            Calendar.this.initialize(list);
            return list;
        }

        public Watch watch(Channel channel) {
            Watch watch = new Watch(channel);
            Calendar.this.initialize(watch);
            return watch;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    static {
        /*
            java.lang.Integer r0 = com.google.api.client.googleapis.GoogleUtils.MAJOR_VERSION
            int r1 = r0.intValue()
            r2 = 1
            if (r1 != r2) goto L23
            java.lang.Integer r1 = com.google.api.client.googleapis.GoogleUtils.MINOR_VERSION
            int r3 = r1.intValue()
            r4 = 32
            if (r3 >= r4) goto L2c
            int r1 = r1.intValue()
            r3 = 31
            if (r1 != r3) goto L23
            java.lang.Integer r1 = com.google.api.client.googleapis.GoogleUtils.BUGFIX_VERSION
            int r1 = r1.intValue()
            if (r1 >= r2) goto L2c
        L23:
            int r0 = r0.intValue()
            r1 = 2
            if (r0 < r1) goto L2b
            goto L2c
        L2b:
            r2 = 0
        L2c:
            java.lang.String r0 = com.google.api.client.googleapis.GoogleUtils.VERSION
            java.lang.Object[] r0 = new java.lang.Object[]{r0}
            java.lang.String r1 = "You are currently running with version %s of google-api-client. You need at least version 1.31.1 of google-api-client to run version 2.0.0 of the Calendar API library."
            com.google.api.client.util.Preconditions.checkState(r2, r1, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.services.calendar.Calendar.<clinit>():void");
    }

    public Calendar(HttpTransport httpTransport, JsonFactory jsonFactory, HttpRequestInitializer httpRequestInitializer) {
        this(new Builder(httpTransport, jsonFactory, httpRequestInitializer));
    }

    public Acl acl() {
        return new Acl();
    }

    public CalendarList calendarList() {
        return new CalendarList();
    }

    public Calendars calendars() {
        return new Calendars();
    }

    public Channels channels() {
        return new Channels();
    }

    public Colors colors() {
        return new Colors();
    }

    public Events events() {
        return new Events();
    }

    public Freebusy freebusy() {
        return new Freebusy();
    }

    @Override // com.google.api.client.googleapis.services.AbstractGoogleClient
    public void initialize(AbstractGoogleClientRequest<?> abstractGoogleClientRequest) {
        super.initialize(abstractGoogleClientRequest);
    }

    public Settings settings() {
        return new Settings();
    }

    public Calendar(Builder builder) {
        super(builder);
    }
}
