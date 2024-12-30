// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(FetchPolicy.serializer)
      ..add(GAbortQueuedMigrationsInput.serializer)
      ..add(GAbortRepositoryMigrationInput.serializer)
      ..add(GAcceptEnterpriseAdministratorInvitationInput.serializer)
      ..add(GAcceptEnterpriseMemberInvitationInput.serializer)
      ..add(GAcceptTopicSuggestionInput.serializer)
      ..add(GAccessUserNamespaceRepositoryInput.serializer)
      ..add(GActorType.serializer)
      ..add(GAddAssigneesToAssignableInput.serializer)
      ..add(GAddCommentInput.serializer)
      ..add(GAddDiscussionCommentInput.serializer)
      ..add(GAddDiscussionPollVoteInput.serializer)
      ..add(GAddEnterpriseOrganizationMemberInput.serializer)
      ..add(GAddEnterpriseSupportEntitlementInput.serializer)
      ..add(GAddLabelsToLabelableInput.serializer)
      ..add(GAddProjectCardInput.serializer)
      ..add(GAddProjectColumnInput.serializer)
      ..add(GAddProjectV2DraftIssueInput.serializer)
      ..add(GAddProjectV2ItemByIdInput.serializer)
      ..add(GAddPullRequestReviewCommentInput.serializer)
      ..add(GAddPullRequestReviewInput.serializer)
      ..add(GAddPullRequestReviewThreadInput.serializer)
      ..add(GAddPullRequestReviewThreadReplyInput.serializer)
      ..add(GAddReactionInput.serializer)
      ..add(GAddStarInput.serializer)
      ..add(GAddSubIssueInput.serializer)
      ..add(GAddUpvoteInput.serializer)
      ..add(GAddVerifiableDomainInput.serializer)
      ..add(GApproveDeploymentsInput.serializer)
      ..add(GApproveVerifiableDomainInput.serializer)
      ..add(GArchiveProjectV2ItemInput.serializer)
      ..add(GArchiveRepositoryInput.serializer)
      ..add(GAuditLogOrder.serializer)
      ..add(GAuditLogOrderField.serializer)
      ..add(GBase64String.serializer)
      ..add(GBigInt.serializer)
      ..add(GBranchNamePatternParametersInput.serializer)
      ..add(GBulkSponsorship.serializer)
      ..add(GCancelEnterpriseAdminInvitationInput.serializer)
      ..add(GCancelEnterpriseMemberInvitationInput.serializer)
      ..add(GCancelSponsorshipInput.serializer)
      ..add(GChangeUserStatusInput.serializer)
      ..add(GCheckAnnotationData.serializer)
      ..add(GCheckAnnotationLevel.serializer)
      ..add(GCheckAnnotationRange.serializer)
      ..add(GCheckConclusionState.serializer)
      ..add(GCheckRunAction.serializer)
      ..add(GCheckRunFilter.serializer)
      ..add(GCheckRunOutput.serializer)
      ..add(GCheckRunOutputImage.serializer)
      ..add(GCheckRunState.serializer)
      ..add(GCheckRunType.serializer)
      ..add(GCheckStatusState.serializer)
      ..add(GCheckSuiteAutoTriggerPreference.serializer)
      ..add(GCheckSuiteFilter.serializer)
      ..add(GClearLabelsFromLabelableInput.serializer)
      ..add(GClearProjectV2ItemFieldValueInput.serializer)
      ..add(GCloneProjectInput.serializer)
      ..add(GCloneTemplateRepositoryInput.serializer)
      ..add(GCloseDiscussionInput.serializer)
      ..add(GCloseIssueInput.serializer)
      ..add(GClosePullRequestInput.serializer)
      ..add(GCodeScanningParametersInput.serializer)
      ..add(GCodeScanningToolInput.serializer)
      ..add(GCollaboratorAffiliation.serializer)
      ..add(GCommentAuthorAssociation.serializer)
      ..add(GCommentCannotUpdateReason.serializer)
      ..add(GCommitAuthor.serializer)
      ..add(GCommitAuthorEmailPatternParametersInput.serializer)
      ..add(GCommitContributionOrder.serializer)
      ..add(GCommitContributionOrderField.serializer)
      ..add(GCommitMessage.serializer)
      ..add(GCommitMessagePatternParametersInput.serializer)
      ..add(GCommittableBranch.serializer)
      ..add(GCommitterEmailPatternParametersInput.serializer)
      ..add(GComparisonStatus.serializer)
      ..add(GContributionLevel.serializer)
      ..add(GContributionOrder.serializer)
      ..add(GConvertProjectCardNoteToIssueInput.serializer)
      ..add(GConvertProjectV2DraftIssueItemToIssueInput.serializer)
      ..add(GConvertPullRequestToDraftInput.serializer)
      ..add(GCopyProjectV2Input.serializer)
      ..add(GCreateAttributionInvitationInput.serializer)
      ..add(GCreateBranchProtectionRuleInput.serializer)
      ..add(GCreateCheckRunInput.serializer)
      ..add(GCreateCheckSuiteInput.serializer)
      ..add(GCreateCommitOnBranchInput.serializer)
      ..add(GCreateDeploymentInput.serializer)
      ..add(GCreateDeploymentStatusInput.serializer)
      ..add(GCreateDiscussionInput.serializer)
      ..add(GCreateEnterpriseOrganizationInput.serializer)
      ..add(GCreateEnvironmentInput.serializer)
      ..add(GCreateIpAllowListEntryInput.serializer)
      ..add(GCreateIssueInput.serializer)
      ..add(GCreateLabelInput.serializer)
      ..add(GCreateLinkedBranchInput.serializer)
      ..add(GCreateMigrationSourceInput.serializer)
      ..add(GCreateProjectInput.serializer)
      ..add(GCreateProjectV2FieldInput.serializer)
      ..add(GCreateProjectV2Input.serializer)
      ..add(GCreateProjectV2StatusUpdateInput.serializer)
      ..add(GCreatePullRequestInput.serializer)
      ..add(GCreateRefInput.serializer)
      ..add(GCreateRepositoryInput.serializer)
      ..add(GCreateRepositoryRulesetInput.serializer)
      ..add(GCreateSponsorsListingInput.serializer)
      ..add(GCreateSponsorsTierInput.serializer)
      ..add(GCreateSponsorshipInput.serializer)
      ..add(GCreateSponsorshipsInput.serializer)
      ..add(GCreateTeamDiscussionCommentInput.serializer)
      ..add(GCreateTeamDiscussionInput.serializer)
      ..add(GCreateUserListInput.serializer)
      ..add(GDate.serializer)
      ..add(GDateTime.serializer)
      ..add(GDeclineTopicSuggestionInput.serializer)
      ..add(GDefaultRepositoryPermissionField.serializer)
      ..add(GDeleteBranchProtectionRuleInput.serializer)
      ..add(GDeleteDeploymentInput.serializer)
      ..add(GDeleteDiscussionCommentInput.serializer)
      ..add(GDeleteDiscussionInput.serializer)
      ..add(GDeleteEnvironmentInput.serializer)
      ..add(GDeleteIpAllowListEntryInput.serializer)
      ..add(GDeleteIssueCommentInput.serializer)
      ..add(GDeleteIssueInput.serializer)
      ..add(GDeleteLabelInput.serializer)
      ..add(GDeleteLinkedBranchInput.serializer)
      ..add(GDeletePackageVersionInput.serializer)
      ..add(GDeleteProjectCardInput.serializer)
      ..add(GDeleteProjectColumnInput.serializer)
      ..add(GDeleteProjectInput.serializer)
      ..add(GDeleteProjectV2FieldInput.serializer)
      ..add(GDeleteProjectV2Input.serializer)
      ..add(GDeleteProjectV2ItemInput.serializer)
      ..add(GDeleteProjectV2StatusUpdateInput.serializer)
      ..add(GDeleteProjectV2WorkflowInput.serializer)
      ..add(GDeletePullRequestReviewCommentInput.serializer)
      ..add(GDeletePullRequestReviewInput.serializer)
      ..add(GDeleteRefInput.serializer)
      ..add(GDeleteRepositoryRulesetInput.serializer)
      ..add(GDeleteTeamDiscussionCommentInput.serializer)
      ..add(GDeleteTeamDiscussionInput.serializer)
      ..add(GDeleteUserListInput.serializer)
      ..add(GDeleteVerifiableDomainInput.serializer)
      ..add(GDependencyGraphEcosystem.serializer)
      ..add(GDeploymentOrder.serializer)
      ..add(GDeploymentOrderField.serializer)
      ..add(GDeploymentProtectionRuleType.serializer)
      ..add(GDeploymentReviewState.serializer)
      ..add(GDeploymentState.serializer)
      ..add(GDeploymentStatusState.serializer)
      ..add(GDequeuePullRequestInput.serializer)
      ..add(GDiffSide.serializer)
      ..add(GDisablePullRequestAutoMergeInput.serializer)
      ..add(GDiscussionCloseReason.serializer)
      ..add(GDiscussionOrder.serializer)
      ..add(GDiscussionOrderField.serializer)
      ..add(GDiscussionPollOptionOrder.serializer)
      ..add(GDiscussionPollOptionOrderField.serializer)
      ..add(GDiscussionState.serializer)
      ..add(GDiscussionStateReason.serializer)
      ..add(GDismissPullRequestReviewInput.serializer)
      ..add(GDismissReason.serializer)
      ..add(GDismissRepositoryVulnerabilityAlertInput.serializer)
      ..add(GDraftPullRequestReviewComment.serializer)
      ..add(GDraftPullRequestReviewThread.serializer)
      ..add(GEnablePullRequestAutoMergeInput.serializer)
      ..add(GEnqueuePullRequestInput.serializer)
      ..add(GEnterpriseAdministratorInvitationOrder.serializer)
      ..add(GEnterpriseAdministratorInvitationOrderField.serializer)
      ..add(GEnterpriseAdministratorRole.serializer)
      ..add(GEnterpriseAllowPrivateRepositoryForkingPolicyValue.serializer)
      ..add(GEnterpriseDefaultRepositoryPermissionSettingValue.serializer)
      ..add(GEnterpriseDisallowedMethodsSettingValue.serializer)
      ..add(GEnterpriseEnabledDisabledSettingValue.serializer)
      ..add(GEnterpriseEnabledSettingValue.serializer)
      ..add(GEnterpriseMemberInvitationOrder.serializer)
      ..add(GEnterpriseMemberInvitationOrderField.serializer)
      ..add(GEnterpriseMemberOrder.serializer)
      ..add(GEnterpriseMemberOrderField.serializer)
      ..add(GEnterpriseMembersCanCreateRepositoriesSettingValue.serializer)
      ..add(GEnterpriseMembersCanMakePurchasesSettingValue.serializer)
      ..add(GEnterpriseMembershipType.serializer)
      ..add(GEnterpriseOrder.serializer)
      ..add(GEnterpriseOrderField.serializer)
      ..add(GEnterpriseServerInstallationOrder.serializer)
      ..add(GEnterpriseServerInstallationOrderField.serializer)
      ..add(GEnterpriseServerUserAccountEmailOrder.serializer)
      ..add(GEnterpriseServerUserAccountEmailOrderField.serializer)
      ..add(GEnterpriseServerUserAccountOrder.serializer)
      ..add(GEnterpriseServerUserAccountOrderField.serializer)
      ..add(GEnterpriseServerUserAccountsUploadOrder.serializer)
      ..add(GEnterpriseServerUserAccountsUploadOrderField.serializer)
      ..add(GEnterpriseServerUserAccountsUploadSyncState.serializer)
      ..add(GEnterpriseUserAccountMembershipRole.serializer)
      ..add(GEnterpriseUserDeployment.serializer)
      ..add(GEnvironmentOrderField.serializer)
      ..add(GEnvironmentPinnedFilterField.serializer)
      ..add(GEnvironments.serializer)
      ..add(GFileAddition.serializer)
      ..add(GFileChanges.serializer)
      ..add(GFileDeletion.serializer)
      ..add(GFileExtensionRestrictionParametersInput.serializer)
      ..add(GFilePathRestrictionParametersInput.serializer)
      ..add(GFileViewedState.serializer)
      ..add(GFollowOrganizationInput.serializer)
      ..add(GFollowUserInput.serializer)
      ..add(GFundingPlatform.serializer)
      ..add(GGistOrder.serializer)
      ..add(GGistOrderField.serializer)
      ..add(GGistPrivacy.serializer)
      ..add(GGitObjectID.serializer)
      ..add(GGitRefname.serializer)
      ..add(GGitSSHRemote.serializer)
      ..add(GGitSignatureState.serializer)
      ..add(GGitTimestamp.serializer)
      ..add(GGrantEnterpriseOrganizationsMigratorRoleInput.serializer)
      ..add(GGrantMigratorRoleInput.serializer)
      ..add(GHTML.serializer)
      ..add(GIdentityProviderConfigurationState.serializer)
      ..add(GImportProjectInput.serializer)
      ..add(GInviteEnterpriseAdminInput.serializer)
      ..add(GInviteEnterpriseMemberInput.serializer)
      ..add(GIpAllowListEnabledSettingValue.serializer)
      ..add(GIpAllowListEntryOrder.serializer)
      ..add(GIpAllowListEntryOrderField.serializer)
      ..add(GIpAllowListForInstalledAppsEnabledSettingValue.serializer)
      ..add(GIssueClosedStateReason.serializer)
      ..add(GIssueCommentOrder.serializer)
      ..add(GIssueCommentOrderField.serializer)
      ..add(GIssueFilters.serializer)
      ..add(GIssueOrder.serializer)
      ..add(GIssueOrderField.serializer)
      ..add(GIssueState.serializer)
      ..add(GIssueStateReason.serializer)
      ..add(GIssueTimelineItemsItemType.serializer)
      ..add(GIssuesData.serializer)
      ..add(GIssuesData_repository.serializer)
      ..add(GIssuesData_repository_issues.serializer)
      ..add(GIssuesData_repository_issues_edges.serializer)
      ..add(GIssuesData_repository_issues_edges_node.serializer)
      ..add(GIssuesData_repository_issues_edges_node_author.serializer)
      ..add(GIssuesReq.serializer)
      ..add(GIssuesVars.serializer)
      ..add(GLabelOrder.serializer)
      ..add(GLabelOrderField.serializer)
      ..add(GLanguageOrder.serializer)
      ..add(GLanguageOrderField.serializer)
      ..add(GLinkProjectV2ToRepositoryInput.serializer)
      ..add(GLinkProjectV2ToTeamInput.serializer)
      ..add(GLinkRepositoryToProjectInput.serializer)
      ..add(GLockLockableInput.serializer)
      ..add(GLockReason.serializer)
      ..add(GMannequinOrder.serializer)
      ..add(GMannequinOrderField.serializer)
      ..add(GMarkDiscussionCommentAsAnswerInput.serializer)
      ..add(GMarkFileAsViewedInput.serializer)
      ..add(GMarkProjectV2AsTemplateInput.serializer)
      ..add(GMarkPullRequestReadyForReviewInput.serializer)
      ..add(GMaxFilePathLengthParametersInput.serializer)
      ..add(GMaxFileSizeParametersInput.serializer)
      ..add(GMergeBranchInput.serializer)
      ..add(GMergeCommitMessage.serializer)
      ..add(GMergeCommitTitle.serializer)
      ..add(GMergePullRequestInput.serializer)
      ..add(GMergeQueueEntryState.serializer)
      ..add(GMergeQueueGroupingStrategy.serializer)
      ..add(GMergeQueueMergeMethod.serializer)
      ..add(GMergeQueueMergingStrategy.serializer)
      ..add(GMergeQueueParametersInput.serializer)
      ..add(GMergeStateStatus.serializer)
      ..add(GMergeableState.serializer)
      ..add(GMigrationSourceType.serializer)
      ..add(GMigrationState.serializer)
      ..add(GMilestoneOrder.serializer)
      ..add(GMilestoneOrderField.serializer)
      ..add(GMilestoneState.serializer)
      ..add(GMinimizeCommentInput.serializer)
      ..add(GMoveProjectCardInput.serializer)
      ..add(GMoveProjectColumnInput.serializer)
      ..add(GNewIssueData.serializer)
      ..add(GNewIssueData_createIssue.serializer)
      ..add(GNewIssueData_createIssue_issue.serializer)
      ..add(GNewIssueReq.serializer)
      ..add(GNewIssueVars.serializer)
      ..add(GNotificationRestrictionSettingValue.serializer)
      ..add(GOIDCProviderType.serializer)
      ..add(GOauthApplicationCreateAuditEntryState.serializer)
      ..add(GOperationType.serializer)
      ..add(GOrderDirection.serializer)
      ..add(GOrgAddMemberAuditEntryPermission.serializer)
      ..add(GOrgCreateAuditEntryBillingPlan.serializer)
      ..add(GOrgEnterpriseOwnerOrder.serializer)
      ..add(GOrgEnterpriseOwnerOrderField.serializer)
      ..add(GOrgRemoveBillingManagerAuditEntryReason.serializer)
      ..add(GOrgRemoveMemberAuditEntryMembershipType.serializer)
      ..add(GOrgRemoveMemberAuditEntryReason.serializer)
      ..add(GOrgRemoveOutsideCollaboratorAuditEntryMembershipType.serializer)
      ..add(GOrgRemoveOutsideCollaboratorAuditEntryReason.serializer)
      ..add(
          GOrgUpdateDefaultRepositoryPermissionAuditEntryPermission.serializer)
      ..add(GOrgUpdateMemberAuditEntryPermission.serializer)
      ..add(GOrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility
          .serializer)
      ..add(GOrganizationInvitationRole.serializer)
      ..add(GOrganizationInvitationSource.serializer)
      ..add(GOrganizationInvitationType.serializer)
      ..add(GOrganizationMemberRole.serializer)
      ..add(GOrganizationMembersCanCreateRepositoriesSettingValue.serializer)
      ..add(GOrganizationMigrationState.serializer)
      ..add(GOrganizationOrder.serializer)
      ..add(GOrganizationOrderField.serializer)
      ..add(GPackageFileOrder.serializer)
      ..add(GPackageFileOrderField.serializer)
      ..add(GPackageOrder.serializer)
      ..add(GPackageOrderField.serializer)
      ..add(GPackageType.serializer)
      ..add(GPackageVersionOrder.serializer)
      ..add(GPackageVersionOrderField.serializer)
      ..add(GPatchStatus.serializer)
      ..add(GPinEnvironmentInput.serializer)
      ..add(GPinIssueInput.serializer)
      ..add(GPinnableItemType.serializer)
      ..add(GPinnedDiscussionGradient.serializer)
      ..add(GPinnedDiscussionPattern.serializer)
      ..add(GPinnedEnvironmentOrder.serializer)
      ..add(GPinnedEnvironmentOrderField.serializer)
      ..add(GPreciseDateTime.serializer)
      ..add(GProjectCardArchivedState.serializer)
      ..add(GProjectCardImport.serializer)
      ..add(GProjectCardState.serializer)
      ..add(GProjectColumnImport.serializer)
      ..add(GProjectColumnPurpose.serializer)
      ..add(GProjectOrder.serializer)
      ..add(GProjectOrderField.serializer)
      ..add(GProjectState.serializer)
      ..add(GProjectTemplate.serializer)
      ..add(GProjectV2Collaborator.serializer)
      ..add(GProjectV2CustomFieldType.serializer)
      ..add(GProjectV2FieldOrder.serializer)
      ..add(GProjectV2FieldOrderField.serializer)
      ..add(GProjectV2FieldType.serializer)
      ..add(GProjectV2FieldValue.serializer)
      ..add(GProjectV2Filters.serializer)
      ..add(GProjectV2ItemFieldValueOrder.serializer)
      ..add(GProjectV2ItemFieldValueOrderField.serializer)
      ..add(GProjectV2ItemOrder.serializer)
      ..add(GProjectV2ItemOrderField.serializer)
      ..add(GProjectV2ItemType.serializer)
      ..add(GProjectV2Order.serializer)
      ..add(GProjectV2OrderField.serializer)
      ..add(GProjectV2PermissionLevel.serializer)
      ..add(GProjectV2Roles.serializer)
      ..add(GProjectV2SingleSelectFieldOptionColor.serializer)
      ..add(GProjectV2SingleSelectFieldOptionInput.serializer)
      ..add(GProjectV2State.serializer)
      ..add(GProjectV2StatusOrder.serializer)
      ..add(GProjectV2StatusUpdateOrderField.serializer)
      ..add(GProjectV2StatusUpdateStatus.serializer)
      ..add(GProjectV2ViewLayout.serializer)
      ..add(GProjectV2ViewOrder.serializer)
      ..add(GProjectV2ViewOrderField.serializer)
      ..add(GProjectV2WorkflowOrder.serializer)
      ..add(GProjectV2WorkflowsOrderField.serializer)
      ..add(GPropertyTargetDefinitionInput.serializer)
      ..add(GPublishSponsorsTierInput.serializer)
      ..add(GPullRequestBranchUpdateMethod.serializer)
      ..add(GPullRequestMergeMethod.serializer)
      ..add(GPullRequestOrder.serializer)
      ..add(GPullRequestOrderField.serializer)
      ..add(GPullRequestParametersInput.serializer)
      ..add(GPullRequestReviewCommentState.serializer)
      ..add(GPullRequestReviewDecision.serializer)
      ..add(GPullRequestReviewEvent.serializer)
      ..add(GPullRequestReviewState.serializer)
      ..add(GPullRequestReviewThreadSubjectType.serializer)
      ..add(GPullRequestState.serializer)
      ..add(GPullRequestTimelineItemsItemType.serializer)
      ..add(GPullRequestUpdateState.serializer)
      ..add(GReactionContent.serializer)
      ..add(GReactionOrder.serializer)
      ..add(GReactionOrderField.serializer)
      ..add(GRefNameConditionTargetInput.serializer)
      ..add(GRefOrder.serializer)
      ..add(GRefOrderField.serializer)
      ..add(GRefUpdate.serializer)
      ..add(GRegenerateEnterpriseIdentityProviderRecoveryCodesInput.serializer)
      ..add(GRegenerateVerifiableDomainTokenInput.serializer)
      ..add(GRejectDeploymentsInput.serializer)
      ..add(GReleaseOrder.serializer)
      ..add(GReleaseOrderField.serializer)
      ..add(GRemoveAssigneesFromAssignableInput.serializer)
      ..add(GRemoveEnterpriseAdminInput.serializer)
      ..add(GRemoveEnterpriseIdentityProviderInput.serializer)
      ..add(GRemoveEnterpriseMemberInput.serializer)
      ..add(GRemoveEnterpriseOrganizationInput.serializer)
      ..add(GRemoveEnterpriseSupportEntitlementInput.serializer)
      ..add(GRemoveLabelsFromLabelableInput.serializer)
      ..add(GRemoveOutsideCollaboratorInput.serializer)
      ..add(GRemoveReactionInput.serializer)
      ..add(GRemoveStarInput.serializer)
      ..add(GRemoveSubIssueInput.serializer)
      ..add(GRemoveUpvoteInput.serializer)
      ..add(GReopenDiscussionInput.serializer)
      ..add(GReopenIssueInput.serializer)
      ..add(GReopenPullRequestInput.serializer)
      ..add(GReorderEnvironmentInput.serializer)
      ..add(GRepoAccessAuditEntryVisibility.serializer)
      ..add(GRepoAddMemberAuditEntryVisibility.serializer)
      ..add(GRepoArchivedAuditEntryVisibility.serializer)
      ..add(GRepoChangeMergeSettingAuditEntryMergeType.serializer)
      ..add(GRepoCreateAuditEntryVisibility.serializer)
      ..add(GRepoDestroyAuditEntryVisibility.serializer)
      ..add(GRepoRemoveMemberAuditEntryVisibility.serializer)
      ..add(GReportedContentClassifiers.serializer)
      ..add(GRepositoryAffiliation.serializer)
      ..add(GRepositoryContributionType.serializer)
      ..add(GRepositoryIdConditionTargetInput.serializer)
      ..add(GRepositoryInteractionLimit.serializer)
      ..add(GRepositoryInteractionLimitExpiry.serializer)
      ..add(GRepositoryInteractionLimitOrigin.serializer)
      ..add(GRepositoryInvitationOrder.serializer)
      ..add(GRepositoryInvitationOrderField.serializer)
      ..add(GRepositoryLockReason.serializer)
      ..add(GRepositoryMigrationOrder.serializer)
      ..add(GRepositoryMigrationOrderDirection.serializer)
      ..add(GRepositoryMigrationOrderField.serializer)
      ..add(GRepositoryNameConditionTargetInput.serializer)
      ..add(GRepositoryOrder.serializer)
      ..add(GRepositoryOrderField.serializer)
      ..add(GRepositoryPermission.serializer)
      ..add(GRepositoryPrivacy.serializer)
      ..add(GRepositoryPropertyConditionTargetInput.serializer)
      ..add(GRepositoryRuleConditionsInput.serializer)
      ..add(GRepositoryRuleInput.serializer)
      ..add(GRepositoryRuleOrder.serializer)
      ..add(GRepositoryRuleOrderField.serializer)
      ..add(GRepositoryRuleType.serializer)
      ..add(GRepositoryRulesetBypassActorBypassMode.serializer)
      ..add(GRepositoryRulesetBypassActorInput.serializer)
      ..add(GRepositoryRulesetTarget.serializer)
      ..add(GRepositoryVisibility.serializer)
      ..add(GRepositoryVulnerabilityAlertDependencyScope.serializer)
      ..add(GRepositoryVulnerabilityAlertState.serializer)
      ..add(GReprioritizeSubIssueInput.serializer)
      ..add(GRequestReviewsInput.serializer)
      ..add(GRequestableCheckStatusState.serializer)
      ..add(GRequiredDeploymentsParametersInput.serializer)
      ..add(GRequiredStatusCheckInput.serializer)
      ..add(GRequiredStatusChecksParametersInput.serializer)
      ..add(GRerequestCheckSuiteInput.serializer)
      ..add(GResolveReviewThreadInput.serializer)
      ..add(GRetireSponsorsTierInput.serializer)
      ..add(GRevertPullRequestInput.serializer)
      ..add(GRevokeEnterpriseOrganizationsMigratorRoleInput.serializer)
      ..add(GRevokeMigratorRoleInput.serializer)
      ..add(GRoleInOrganization.serializer)
      ..add(GRuleEnforcement.serializer)
      ..add(GRuleParametersInput.serializer)
      ..add(GSamlDigestAlgorithm.serializer)
      ..add(GSamlSignatureAlgorithm.serializer)
      ..add(GSavedReplyOrder.serializer)
      ..add(GSavedReplyOrderField.serializer)
      ..add(GSearchType.serializer)
      ..add(GSecurityAdvisoryClassification.serializer)
      ..add(GSecurityAdvisoryEcosystem.serializer)
      ..add(GSecurityAdvisoryIdentifierFilter.serializer)
      ..add(GSecurityAdvisoryIdentifierType.serializer)
      ..add(GSecurityAdvisoryOrder.serializer)
      ..add(GSecurityAdvisoryOrderField.serializer)
      ..add(GSecurityAdvisorySeverity.serializer)
      ..add(GSecurityVulnerabilityOrder.serializer)
      ..add(GSecurityVulnerabilityOrderField.serializer)
      ..add(GSetEnterpriseIdentityProviderInput.serializer)
      ..add(GSetOrganizationInteractionLimitInput.serializer)
      ..add(GSetRepositoryInteractionLimitInput.serializer)
      ..add(GSetUserInteractionLimitInput.serializer)
      ..add(GSocialAccountProvider.serializer)
      ..add(GSponsorAndLifetimeValueOrder.serializer)
      ..add(GSponsorAndLifetimeValueOrderField.serializer)
      ..add(GSponsorOrder.serializer)
      ..add(GSponsorOrderField.serializer)
      ..add(GSponsorableOrder.serializer)
      ..add(GSponsorableOrderField.serializer)
      ..add(GSponsorsActivityAction.serializer)
      ..add(GSponsorsActivityOrder.serializer)
      ..add(GSponsorsActivityOrderField.serializer)
      ..add(GSponsorsActivityPeriod.serializer)
      ..add(GSponsorsCountryOrRegionCode.serializer)
      ..add(GSponsorsGoalKind.serializer)
      ..add(GSponsorsListingFeaturedItemFeatureableType.serializer)
      ..add(GSponsorsTierOrder.serializer)
      ..add(GSponsorsTierOrderField.serializer)
      ..add(GSponsorshipNewsletterOrder.serializer)
      ..add(GSponsorshipNewsletterOrderField.serializer)
      ..add(GSponsorshipOrder.serializer)
      ..add(GSponsorshipOrderField.serializer)
      ..add(GSponsorshipPaymentSource.serializer)
      ..add(GSponsorshipPrivacy.serializer)
      ..add(GSquashMergeCommitMessage.serializer)
      ..add(GSquashMergeCommitTitle.serializer)
      ..add(GStarOrder.serializer)
      ..add(GStarOrderField.serializer)
      ..add(GStartOrganizationMigrationInput.serializer)
      ..add(GStartRepositoryMigrationInput.serializer)
      ..add(GStatusCheckConfigurationInput.serializer)
      ..add(GStatusState.serializer)
      ..add(GSubmitPullRequestReviewInput.serializer)
      ..add(GSubscriptionState.serializer)
      ..add(GTagNamePatternParametersInput.serializer)
      ..add(GTeamDiscussionCommentOrder.serializer)
      ..add(GTeamDiscussionCommentOrderField.serializer)
      ..add(GTeamDiscussionOrder.serializer)
      ..add(GTeamDiscussionOrderField.serializer)
      ..add(GTeamMemberOrder.serializer)
      ..add(GTeamMemberOrderField.serializer)
      ..add(GTeamMemberRole.serializer)
      ..add(GTeamMembershipType.serializer)
      ..add(GTeamNotificationSetting.serializer)
      ..add(GTeamOrder.serializer)
      ..add(GTeamOrderField.serializer)
      ..add(GTeamPrivacy.serializer)
      ..add(GTeamRepositoryOrder.serializer)
      ..add(GTeamRepositoryOrderField.serializer)
      ..add(GTeamReviewAssignmentAlgorithm.serializer)
      ..add(GTeamRole.serializer)
      ..add(GThreadSubscriptionFormAction.serializer)
      ..add(GThreadSubscriptionState.serializer)
      ..add(GTopicSuggestionDeclineReason.serializer)
      ..add(GTrackedIssueStates.serializer)
      ..add(GTransferEnterpriseOrganizationInput.serializer)
      ..add(GTransferIssueInput.serializer)
      ..add(GTwoFactorCredentialSecurityType.serializer)
      ..add(GURI.serializer)
      ..add(GUnarchiveProjectV2ItemInput.serializer)
      ..add(GUnarchiveRepositoryInput.serializer)
      ..add(GUnfollowOrganizationInput.serializer)
      ..add(GUnfollowUserInput.serializer)
      ..add(GUnlinkProjectV2FromRepositoryInput.serializer)
      ..add(GUnlinkProjectV2FromTeamInput.serializer)
      ..add(GUnlinkRepositoryFromProjectInput.serializer)
      ..add(GUnlockLockableInput.serializer)
      ..add(GUnmarkDiscussionCommentAsAnswerInput.serializer)
      ..add(GUnmarkFileAsViewedInput.serializer)
      ..add(GUnmarkIssueAsDuplicateInput.serializer)
      ..add(GUnmarkProjectV2AsTemplateInput.serializer)
      ..add(GUnminimizeCommentInput.serializer)
      ..add(GUnpinIssueInput.serializer)
      ..add(GUnresolveReviewThreadInput.serializer)
      ..add(GUpdateBranchProtectionRuleInput.serializer)
      ..add(GUpdateCheckRunInput.serializer)
      ..add(GUpdateCheckSuitePreferencesInput.serializer)
      ..add(GUpdateDiscussionCommentInput.serializer)
      ..add(GUpdateDiscussionInput.serializer)
      ..add(GUpdateEnterpriseAdministratorRoleInput.serializer)
      ..add(
          GUpdateEnterpriseAllowPrivateRepositoryForkingSettingInput.serializer)
      ..add(GUpdateEnterpriseDefaultRepositoryPermissionSettingInput.serializer)
      ..add(GUpdateEnterpriseDeployKeySettingInput.serializer)
      ..add(GUpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingInput
          .serializer)
      ..add(
          GUpdateEnterpriseMembersCanCreateRepositoriesSettingInput.serializer)
      ..add(GUpdateEnterpriseMembersCanDeleteIssuesSettingInput.serializer)
      ..add(
          GUpdateEnterpriseMembersCanDeleteRepositoriesSettingInput.serializer)
      ..add(
          GUpdateEnterpriseMembersCanInviteCollaboratorsSettingInput.serializer)
      ..add(GUpdateEnterpriseMembersCanMakePurchasesSettingInput.serializer)
      ..add(GUpdateEnterpriseMembersCanUpdateProtectedBranchesSettingInput
          .serializer)
      ..add(GUpdateEnterpriseMembersCanViewDependencyInsightsSettingInput
          .serializer)
      ..add(GUpdateEnterpriseOrganizationProjectsSettingInput.serializer)
      ..add(GUpdateEnterpriseOwnerOrganizationRoleInput.serializer)
      ..add(GUpdateEnterpriseProfileInput.serializer)
      ..add(GUpdateEnterpriseRepositoryProjectsSettingInput.serializer)
      ..add(GUpdateEnterpriseTeamDiscussionsSettingInput.serializer)
      ..add(
          GUpdateEnterpriseTwoFactorAuthenticationDisallowedMethodsSettingInput
              .serializer)
      ..add(GUpdateEnterpriseTwoFactorAuthenticationRequiredSettingInput
          .serializer)
      ..add(GUpdateEnvironmentInput.serializer)
      ..add(GUpdateIpAllowListEnabledSettingInput.serializer)
      ..add(GUpdateIpAllowListEntryInput.serializer)
      ..add(GUpdateIpAllowListForInstalledAppsEnabledSettingInput.serializer)
      ..add(GUpdateIssueCommentInput.serializer)
      ..add(GUpdateIssueInput.serializer)
      ..add(GUpdateLabelInput.serializer)
      ..add(GUpdateNotificationRestrictionSettingInput.serializer)
      ..add(GUpdateOrganizationAllowPrivateRepositoryForkingSettingInput
          .serializer)
      ..add(GUpdateOrganizationWebCommitSignoffSettingInput.serializer)
      ..add(GUpdateParametersInput.serializer)
      ..add(GUpdatePatreonSponsorabilityInput.serializer)
      ..add(GUpdateProjectCardInput.serializer)
      ..add(GUpdateProjectColumnInput.serializer)
      ..add(GUpdateProjectInput.serializer)
      ..add(GUpdateProjectV2CollaboratorsInput.serializer)
      ..add(GUpdateProjectV2DraftIssueInput.serializer)
      ..add(GUpdateProjectV2FieldInput.serializer)
      ..add(GUpdateProjectV2Input.serializer)
      ..add(GUpdateProjectV2ItemFieldValueInput.serializer)
      ..add(GUpdateProjectV2ItemPositionInput.serializer)
      ..add(GUpdateProjectV2StatusUpdateInput.serializer)
      ..add(GUpdatePullRequestBranchInput.serializer)
      ..add(GUpdatePullRequestInput.serializer)
      ..add(GUpdatePullRequestReviewCommentInput.serializer)
      ..add(GUpdatePullRequestReviewInput.serializer)
      ..add(GUpdateRefInput.serializer)
      ..add(GUpdateRefsInput.serializer)
      ..add(GUpdateRepositoryInput.serializer)
      ..add(GUpdateRepositoryRulesetInput.serializer)
      ..add(GUpdateRepositoryWebCommitSignoffSettingInput.serializer)
      ..add(GUpdateSponsorshipPreferencesInput.serializer)
      ..add(GUpdateSubscriptionInput.serializer)
      ..add(GUpdateTeamDiscussionCommentInput.serializer)
      ..add(GUpdateTeamDiscussionInput.serializer)
      ..add(GUpdateTeamReviewAssignmentInput.serializer)
      ..add(GUpdateTeamsRepositoryInput.serializer)
      ..add(GUpdateTopicsInput.serializer)
      ..add(GUpdateUserListInput.serializer)
      ..add(GUpdateUserListsForItemInput.serializer)
      ..add(GUserBlockDuration.serializer)
      ..add(GUserStatusOrder.serializer)
      ..add(GUserStatusOrderField.serializer)
      ..add(GUserViewType.serializer)
      ..add(GVerifiableDomainOrder.serializer)
      ..add(GVerifiableDomainOrderField.serializer)
      ..add(GVerifyVerifiableDomainInput.serializer)
      ..add(GWorkflowFileReferenceInput.serializer)
      ..add(GWorkflowRunOrder.serializer)
      ..add(GWorkflowRunOrderField.serializer)
      ..add(GWorkflowState.serializer)
      ..add(GWorkflowsParametersInput.serializer)
      ..add(GX509Certificate.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GBulkSponsorship)]),
          () => new ListBuilder<GBulkSponsorship>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCheckAnnotationData)]),
          () => new ListBuilder<GCheckAnnotationData>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCheckRunOutputImage)]),
          () => new ListBuilder<GCheckRunOutputImage>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GCheckRunAction)]),
          () => new ListBuilder<GCheckRunAction>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GCheckRunAction)]),
          () => new ListBuilder<GCheckRunAction>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GCheckStatusState)]),
          () => new ListBuilder<GCheckStatusState>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCheckConclusionState)]),
          () => new ListBuilder<GCheckConclusionState>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GCheckSuiteAutoTriggerPreference)]),
          () => new ListBuilder<GCheckSuiteAutoTriggerPreference>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCodeScanningToolInput)]),
          () => new ListBuilder<GCodeScanningToolInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GFileDeletion)]),
          () => new ListBuilder<GFileDeletion>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GFileAddition)]),
          () => new ListBuilder<GFileAddition>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GProjectCardImport)]),
          () => new ListBuilder<GProjectCardImport>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProjectColumnImport)]),
          () => new ListBuilder<GProjectColumnImport>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GProjectV2Collaborator)]),
          () => new ListBuilder<GProjectV2Collaborator>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProjectV2SingleSelectFieldOptionInput)]),
          () => new ListBuilder<GProjectV2SingleSelectFieldOptionInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GProjectV2SingleSelectFieldOptionInput)]),
          () => new ListBuilder<GProjectV2SingleSelectFieldOptionInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPropertyTargetDefinitionInput)]),
          () => new ListBuilder<GPropertyTargetDefinitionInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPropertyTargetDefinitionInput)]),
          () => new ListBuilder<GPropertyTargetDefinitionInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GRefUpdate)]),
          () => new ListBuilder<GRefUpdate>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GRepositoryRuleInput)]),
          () => new ListBuilder<GRepositoryRuleInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GRepositoryRulesetBypassActorInput)]),
          () => new ListBuilder<GRepositoryRulesetBypassActorInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GRepositoryRuleInput)]),
          () => new ListBuilder<GRepositoryRuleInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GRepositoryRulesetBypassActorInput)]),
          () => new ListBuilder<GRepositoryRulesetBypassActorInput>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GStatusCheckConfigurationInput)]),
          () => new ListBuilder<GStatusCheckConfigurationInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GWorkflowFileReferenceInput)]),
          () => new ListBuilder<GWorkflowFileReferenceInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GIssueState)]),
          () => new ListBuilder<GIssueState>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GRequiredStatusCheckInput)]),
          () => new ListBuilder<GRequiredStatusCheckInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GRequiredStatusCheckInput)]),
          () => new ListBuilder<GRequiredStatusCheckInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GDraftPullRequestReviewComment)]),
          () => new ListBuilder<GDraftPullRequestReviewComment?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GDraftPullRequestReviewThread)]),
          () => new ListBuilder<GDraftPullRequestReviewThread?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GIssuesData_repository_issues_edges)
          ]),
          () => new ListBuilder<GIssuesData_repository_issues_edges?>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
