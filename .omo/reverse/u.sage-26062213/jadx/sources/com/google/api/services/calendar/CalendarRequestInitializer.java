package com.google.api.services.calendar;

import com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest;
import com.google.api.client.googleapis.services.json.CommonGoogleJsonClientRequestInitializer;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class CalendarRequestInitializer extends CommonGoogleJsonClientRequestInitializer {
    public CalendarRequestInitializer() {
    }

    @Override // com.google.api.client.googleapis.services.json.CommonGoogleJsonClientRequestInitializer
    public final void initializeJsonRequest(AbstractGoogleJsonClientRequest<?> abstractGoogleJsonClientRequest) {
        super.initializeJsonRequest(abstractGoogleJsonClientRequest);
        initializeCalendarRequest((CalendarRequest) abstractGoogleJsonClientRequest);
    }

    public CalendarRequestInitializer(String str) {
        super(str);
    }

    public CalendarRequestInitializer(String str, String str2) {
        super(str, str2);
    }

    public void initializeCalendarRequest(CalendarRequest<?> calendarRequest) {
    }
}
