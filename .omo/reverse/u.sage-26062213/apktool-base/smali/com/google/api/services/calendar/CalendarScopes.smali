.class public Lcom/google/api/services/calendar/CalendarScopes;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final CALENDAR:Ljava/lang/String; = "https://www.googleapis.com/auth/calendar"

.field public static final CALENDAR_ACLS:Ljava/lang/String; = "https://www.googleapis.com/auth/calendar.acls"

.field public static final CALENDAR_ACLS_READONLY:Ljava/lang/String; = "https://www.googleapis.com/auth/calendar.acls.readonly"

.field public static final CALENDAR_APP_CREATED:Ljava/lang/String; = "https://www.googleapis.com/auth/calendar.app.created"

.field public static final CALENDAR_CALENDARLIST:Ljava/lang/String; = "https://www.googleapis.com/auth/calendar.calendarlist"

.field public static final CALENDAR_CALENDARLIST_READONLY:Ljava/lang/String; = "https://www.googleapis.com/auth/calendar.calendarlist.readonly"

.field public static final CALENDAR_CALENDARS:Ljava/lang/String; = "https://www.googleapis.com/auth/calendar.calendars"

.field public static final CALENDAR_CALENDARS_READONLY:Ljava/lang/String; = "https://www.googleapis.com/auth/calendar.calendars.readonly"

.field public static final CALENDAR_EVENTS:Ljava/lang/String; = "https://www.googleapis.com/auth/calendar.events"

.field public static final CALENDAR_EVENTS_FREEBUSY:Ljava/lang/String; = "https://www.googleapis.com/auth/calendar.events.freebusy"

.field public static final CALENDAR_EVENTS_OWNED:Ljava/lang/String; = "https://www.googleapis.com/auth/calendar.events.owned"

.field public static final CALENDAR_EVENTS_OWNED_READONLY:Ljava/lang/String; = "https://www.googleapis.com/auth/calendar.events.owned.readonly"

.field public static final CALENDAR_EVENTS_PUBLIC_READONLY:Ljava/lang/String; = "https://www.googleapis.com/auth/calendar.events.public.readonly"

.field public static final CALENDAR_EVENTS_READONLY:Ljava/lang/String; = "https://www.googleapis.com/auth/calendar.events.readonly"

.field public static final CALENDAR_FREEBUSY:Ljava/lang/String; = "https://www.googleapis.com/auth/calendar.freebusy"

.field public static final CALENDAR_READONLY:Ljava/lang/String; = "https://www.googleapis.com/auth/calendar.readonly"

.field public static final CALENDAR_SETTINGS_READONLY:Ljava/lang/String; = "https://www.googleapis.com/auth/calendar.settings.readonly"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static all()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "https://www.googleapis.com/auth/calendar"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    const-string v1, "https://www.googleapis.com/auth/calendar.acls"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    const-string v1, "https://www.googleapis.com/auth/calendar.acls.readonly"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    const-string v1, "https://www.googleapis.com/auth/calendar.app.created"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const-string v1, "https://www.googleapis.com/auth/calendar.calendarlist"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    const-string v1, "https://www.googleapis.com/auth/calendar.calendarlist.readonly"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    const-string v1, "https://www.googleapis.com/auth/calendar.calendars"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    const-string v1, "https://www.googleapis.com/auth/calendar.calendars.readonly"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    const-string v1, "https://www.googleapis.com/auth/calendar.events"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    const-string v1, "https://www.googleapis.com/auth/calendar.events.freebusy"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    const-string v1, "https://www.googleapis.com/auth/calendar.events.owned"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    const-string v1, "https://www.googleapis.com/auth/calendar.events.owned.readonly"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    const-string v1, "https://www.googleapis.com/auth/calendar.events.public.readonly"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    const-string v1, "https://www.googleapis.com/auth/calendar.events.readonly"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    const-string v1, "https://www.googleapis.com/auth/calendar.freebusy"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    const-string v1, "https://www.googleapis.com/auth/calendar.readonly"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    const-string v1, "https://www.googleapis.com/auth/calendar.settings.readonly"

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0
.end method
