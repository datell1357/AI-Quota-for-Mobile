.class public final Lcom/google/api/services/calendar/model/EventBirthdayProperties;
.super Lcom/google/api/client/json/GenericJson;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field private contact:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private customTypeName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private type:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventBirthdayProperties;->clone()Lcom/google/api/services/calendar/model/EventBirthdayProperties;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventBirthdayProperties;->clone()Lcom/google/api/services/calendar/model/EventBirthdayProperties;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/google/api/services/calendar/model/EventBirthdayProperties;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/model/EventBirthdayProperties;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventBirthdayProperties;->clone()Lcom/google/api/services/calendar/model/EventBirthdayProperties;

    move-result-object p0

    return-object p0
.end method

.method public getContact()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/EventBirthdayProperties;->contact:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCustomTypeName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/EventBirthdayProperties;->customTypeName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/EventBirthdayProperties;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/EventBirthdayProperties;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventBirthdayProperties;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/EventBirthdayProperties;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventBirthdayProperties;

    move-result-object p0

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventBirthdayProperties;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/model/EventBirthdayProperties;

    .line 6
    .line 7
    return-object p0
.end method

.method public setContact(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventBirthdayProperties;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventBirthdayProperties;->contact:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCustomTypeName(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventBirthdayProperties;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventBirthdayProperties;->customTypeName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventBirthdayProperties;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventBirthdayProperties;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
