package com.google.api.services.calendar;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class CalendarScopes {
    public static final String CALENDAR = "https://www.googleapis.com/auth/calendar";
    public static final String CALENDAR_ACLS = "https://www.googleapis.com/auth/calendar.acls";
    public static final String CALENDAR_ACLS_READONLY = "https://www.googleapis.com/auth/calendar.acls.readonly";
    public static final String CALENDAR_APP_CREATED = "https://www.googleapis.com/auth/calendar.app.created";
    public static final String CALENDAR_CALENDARLIST = "https://www.googleapis.com/auth/calendar.calendarlist";
    public static final String CALENDAR_CALENDARLIST_READONLY = "https://www.googleapis.com/auth/calendar.calendarlist.readonly";
    public static final String CALENDAR_CALENDARS = "https://www.googleapis.com/auth/calendar.calendars";
    public static final String CALENDAR_CALENDARS_READONLY = "https://www.googleapis.com/auth/calendar.calendars.readonly";
    public static final String CALENDAR_EVENTS = "https://www.googleapis.com/auth/calendar.events";
    public static final String CALENDAR_EVENTS_FREEBUSY = "https://www.googleapis.com/auth/calendar.events.freebusy";
    public static final String CALENDAR_EVENTS_OWNED = "https://www.googleapis.com/auth/calendar.events.owned";
    public static final String CALENDAR_EVENTS_OWNED_READONLY = "https://www.googleapis.com/auth/calendar.events.owned.readonly";
    public static final String CALENDAR_EVENTS_PUBLIC_READONLY = "https://www.googleapis.com/auth/calendar.events.public.readonly";
    public static final String CALENDAR_EVENTS_READONLY = "https://www.googleapis.com/auth/calendar.events.readonly";
    public static final String CALENDAR_FREEBUSY = "https://www.googleapis.com/auth/calendar.freebusy";
    public static final String CALENDAR_READONLY = "https://www.googleapis.com/auth/calendar.readonly";
    public static final String CALENDAR_SETTINGS_READONLY = "https://www.googleapis.com/auth/calendar.settings.readonly";

    private CalendarScopes() {
    }

    public static Set<String> all() {
        HashSet hashSet = new HashSet();
        hashSet.add(CALENDAR);
        hashSet.add(CALENDAR_ACLS);
        hashSet.add(CALENDAR_ACLS_READONLY);
        hashSet.add(CALENDAR_APP_CREATED);
        hashSet.add(CALENDAR_CALENDARLIST);
        hashSet.add(CALENDAR_CALENDARLIST_READONLY);
        hashSet.add(CALENDAR_CALENDARS);
        hashSet.add(CALENDAR_CALENDARS_READONLY);
        hashSet.add(CALENDAR_EVENTS);
        hashSet.add(CALENDAR_EVENTS_FREEBUSY);
        hashSet.add(CALENDAR_EVENTS_OWNED);
        hashSet.add(CALENDAR_EVENTS_OWNED_READONLY);
        hashSet.add(CALENDAR_EVENTS_PUBLIC_READONLY);
        hashSet.add(CALENDAR_EVENTS_READONLY);
        hashSet.add(CALENDAR_FREEBUSY);
        hashSet.add(CALENDAR_READONLY);
        hashSet.add(CALENDAR_SETTINGS_READONLY);
        return Collections.unmodifiableSet(hashSet);
    }
}
