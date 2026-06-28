.class public final Lcom/google/api/services/calendar/model/Events;
.super Lcom/google/api/client/json/GenericJson;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field private accessRole:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private defaultReminders:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;"
        }
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

.field private items:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/calendar/model/Event;",
            ">;"
        }
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private nextPageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private nextSyncToken:Ljava/lang/String;
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

.field private updated:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/api/services/calendar/model/EventReminder;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/google/api/services/calendar/model/Event;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Events;->clone()Lcom/google/api/services/calendar/model/Events;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Events;->clone()Lcom/google/api/services/calendar/model/Events;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/google/api/services/calendar/model/Events;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/model/Events;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Events;->clone()Lcom/google/api/services/calendar/model/Events;

    move-result-object p0

    return-object p0
.end method

.method public getAccessRole()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Events;->accessRole:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDefaultReminders()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Events;->defaultReminders:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Events;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Events;->etag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/calendar/model/Event;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Events;->items:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getKind()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Events;->kind:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getNextPageToken()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Events;->nextPageToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getNextSyncToken()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Events;->nextSyncToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Events;->summary:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Events;->timeZone:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getUpdated()Lcom/google/api/client/util/DateTime;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/Events;->updated:Lcom/google/api/client/util/DateTime;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Events;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Events;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Events;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Events;

    move-result-object p0

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Events;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/model/Events;

    .line 6
    .line 7
    return-object p0
.end method

.method public setAccessRole(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Events;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Events;->accessRole:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDefaultReminders(Ljava/util/List;)Lcom/google/api/services/calendar/model/Events;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;)",
            "Lcom/google/api/services/calendar/model/Events;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Events;->defaultReminders:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Events;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Events;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEtag(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Events;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Events;->etag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setItems(Ljava/util/List;)Lcom/google/api/services/calendar/model/Events;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/calendar/model/Event;",
            ">;)",
            "Lcom/google/api/services/calendar/model/Events;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Events;->items:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Events;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Events;->kind:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setNextPageToken(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Events;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Events;->nextPageToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setNextSyncToken(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Events;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Events;->nextSyncToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Events;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Events;->summary:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTimeZone(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Events;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Events;->timeZone:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUpdated(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/model/Events;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Events;->updated:Lcom/google/api/client/util/DateTime;

    .line 2
    .line 3
    return-object p0
.end method
