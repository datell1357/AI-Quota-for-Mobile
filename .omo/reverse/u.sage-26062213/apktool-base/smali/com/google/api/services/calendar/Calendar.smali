.class public Lcom/google/api/services/calendar/Calendar;
.super Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/calendar/Calendar$Builder;,
        Lcom/google/api/services/calendar/Calendar$Settings;,
        Lcom/google/api/services/calendar/Calendar$Freebusy;,
        Lcom/google/api/services/calendar/Calendar$Events;,
        Lcom/google/api/services/calendar/Calendar$Colors;,
        Lcom/google/api/services/calendar/Calendar$Channels;,
        Lcom/google/api/services/calendar/Calendar$Calendars;,
        Lcom/google/api/services/calendar/Calendar$CalendarList;,
        Lcom/google/api/services/calendar/Calendar$Acl;
    }
.end annotation


# static fields
.field public static final DEFAULT_BASE_URL:Ljava/lang/String; = "https://www.googleapis.com/calendar/v3/"

.field public static final DEFAULT_BATCH_PATH:Ljava/lang/String; = "batch/calendar/v3"

.field public static final DEFAULT_MTLS_ROOT_URL:Ljava/lang/String; = "https://www.mtls.googleapis.com/"

.field public static final DEFAULT_ROOT_URL:Ljava/lang/String; = "https://www.googleapis.com/"

.field public static final DEFAULT_SERVICE_PATH:Ljava/lang/String; = "calendar/v3/"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/api/client/googleapis/GoogleUtils;->MAJOR_VERSION:Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    sget-object v1, Lcom/google/api/client/googleapis/GoogleUtils;->MINOR_VERSION:Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/16 v4, 0x20

    .line 17
    .line 18
    if-ge v3, v4, :cond_2

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/16 v3, 0x1f

    .line 25
    .line 26
    if-ne v1, v3, :cond_0

    .line 27
    .line 28
    sget-object v1, Lcom/google/api/client/googleapis/GoogleUtils;->BUGFIX_VERSION:Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ge v1, v2, :cond_2

    .line 35
    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x2

    .line 41
    if-lt v0, v1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v2, 0x0

    .line 45
    :cond_2
    :goto_0
    sget-object v0, Lcom/google/api/client/googleapis/GoogleUtils;->VERSION:Ljava/lang/String;

    .line 46
    .line 47
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "You are currently running with version %s of google-api-client. You need at least version 1.31.1 of google-api-client to run version 2.0.0 of the Calendar API library."

    .line 52
    .line 53
    invoke-static {v2, v1, v0}, Lcom/google/api/client/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/google/api/services/calendar/Calendar$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/google/api/services/calendar/Calendar;-><init>(Lcom/google/api/services/calendar/Calendar$Builder;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/google/api/services/calendar/Calendar$Builder;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;-><init>(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;)V

    return-void
.end method


# virtual methods
.method public acl()Lcom/google/api/services/calendar/Calendar$Acl;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Acl;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/api/services/calendar/Calendar$Acl;-><init>(Lcom/google/api/services/calendar/Calendar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public calendarList()Lcom/google/api/services/calendar/Calendar$CalendarList;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/services/calendar/Calendar$CalendarList;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/api/services/calendar/Calendar$CalendarList;-><init>(Lcom/google/api/services/calendar/Calendar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public calendars()Lcom/google/api/services/calendar/Calendar$Calendars;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Calendars;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/api/services/calendar/Calendar$Calendars;-><init>(Lcom/google/api/services/calendar/Calendar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public channels()Lcom/google/api/services/calendar/Calendar$Channels;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Channels;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/api/services/calendar/Calendar$Channels;-><init>(Lcom/google/api/services/calendar/Calendar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public colors()Lcom/google/api/services/calendar/Calendar$Colors;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Colors;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/api/services/calendar/Calendar$Colors;-><init>(Lcom/google/api/services/calendar/Calendar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public events()Lcom/google/api/services/calendar/Calendar$Events;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Events;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/api/services/calendar/Calendar$Events;-><init>(Lcom/google/api/services/calendar/Calendar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public freebusy()Lcom/google/api/services/calendar/Calendar$Freebusy;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Freebusy;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/api/services/calendar/Calendar$Freebusy;-><init>(Lcom/google/api/services/calendar/Calendar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public settings()Lcom/google/api/services/calendar/Calendar$Settings;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Settings;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/api/services/calendar/Calendar$Settings;-><init>(Lcom/google/api/services/calendar/Calendar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
