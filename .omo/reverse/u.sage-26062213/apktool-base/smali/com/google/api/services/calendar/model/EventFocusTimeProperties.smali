.class public final Lcom/google/api/services/calendar/model/EventFocusTimeProperties;
.super Lcom/google/api/client/json/GenericJson;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field private autoDeclineMode:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private chatStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private declineMessage:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventFocusTimeProperties;->clone()Lcom/google/api/services/calendar/model/EventFocusTimeProperties;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventFocusTimeProperties;->clone()Lcom/google/api/services/calendar/model/EventFocusTimeProperties;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/google/api/services/calendar/model/EventFocusTimeProperties;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/model/EventFocusTimeProperties;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventFocusTimeProperties;->clone()Lcom/google/api/services/calendar/model/EventFocusTimeProperties;

    move-result-object p0

    return-object p0
.end method

.method public getAutoDeclineMode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/EventFocusTimeProperties;->autoDeclineMode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getChatStatus()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/EventFocusTimeProperties;->chatStatus:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDeclineMessage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/EventFocusTimeProperties;->declineMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/EventFocusTimeProperties;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventFocusTimeProperties;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/EventFocusTimeProperties;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventFocusTimeProperties;

    move-result-object p0

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventFocusTimeProperties;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/model/EventFocusTimeProperties;

    .line 6
    .line 7
    return-object p0
.end method

.method public setAutoDeclineMode(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventFocusTimeProperties;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventFocusTimeProperties;->autoDeclineMode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setChatStatus(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventFocusTimeProperties;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventFocusTimeProperties;->chatStatus:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDeclineMessage(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventFocusTimeProperties;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventFocusTimeProperties;->declineMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
