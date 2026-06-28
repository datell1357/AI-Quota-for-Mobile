.class public final Lcom/google/api/services/calendar/model/Calendar;
.super Lcom/google/api/client/json/GenericJson;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field private conferenceProperties:Lcom/google/api/services/calendar/model/ConferenceProperties;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private location:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private summary:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private timeZone:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Calendar;->clone()Lcom/google/api/services/calendar/model/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Calendar;->clone()Lcom/google/api/services/calendar/model/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/google/api/services/calendar/model/Calendar;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/model/Calendar;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Calendar;->clone()Lcom/google/api/services/calendar/model/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public getConferenceProperties()Lcom/google/api/services/calendar/model/ConferenceProperties;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Calendar;->conferenceProperties:Lcom/google/api/services/calendar/model/ConferenceProperties;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Calendar;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Calendar;->etag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Calendar;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getKind()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Calendar;->kind:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Calendar;->location:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Calendar;->summary:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Calendar;->timeZone:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Calendar;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Calendar;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Calendar;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/model/Calendar;

    .line 6
    .line 7
    return-object p0
.end method

.method public setConferenceProperties(Lcom/google/api/services/calendar/model/ConferenceProperties;)Lcom/google/api/services/calendar/model/Calendar;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Calendar;->conferenceProperties:Lcom/google/api/services/calendar/model/ConferenceProperties;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Calendar;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Calendar;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEtag(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Calendar;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Calendar;->etag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Calendar;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Calendar;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Calendar;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Calendar;->kind:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Calendar;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Calendar;->location:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Calendar;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Calendar;->summary:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTimeZone(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Calendar;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Calendar;->timeZone:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
