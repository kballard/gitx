//
//  PBGitDefaults.m
//  GitX
//
//  Created by Jeff Mesnil on 19/10/08.
//  Copyright 2008 Jeff Mesnil (http://jmesnil.net/). All rights reserved.
//

#import "PBGitDefaults.h"
#import "PBHistorySearchController.h"

#define kDefaultVerticalLineLength 50
#define kDefaultSplitVerticalLineLength 76
#define kCommitMessageViewVerticalLineLength @"PBCommitMessageViewVerticalLineLength"
#define kCommitMessageViewHasVerticalLine @"PBCommitMessageViewHasVerticalLine"
#define kCommitMessageViewHasSplitVerticalLine @"PBCommitMessageViewHasSplitVerticalLine"
#define kCommitMessageViewSplitVerticalLineLength @"PBCommitMessageViewSplitVerticalLineLength"
#define kEnableGist @"PBEnableGist"
#define kEnableGravatar @"PBEnableGravatar"
#define kConfirmPublicGists @"PBConfirmPublicGists"
#define kPublicGist @"PBGistPublic"
#define kShowWhitespaceDifferences @"PBShowWhitespaceDifferences"
#define kOpenCurDirOnLaunch @"PBOpenCurDirOnLaunch"
#define kShowOpenPanelOnLaunch @"PBShowOpenPanelOnLaunch"
#define kShouldCheckoutBranch @"PBShouldCheckoutBranch"
#define kRecentCloneDestination @"PBRecentCloneDestination"
#define kShowStageView @"PBShowStageView"
#define kOpenPreviousDocumentsOnLaunch @"PBOpenPreviousDocumentsOnLaunch"
#define kPreviousDocumentPaths @"PBPreviousDocumentPaths"
#define kBranchFilterState @"PBBranchFilter"
#define kHistorySearchMode @"PBHistorySearchMode"
#define kSuppressedDialogWarnings @"Suppressed Dialog Warnings"

@implementation PBGitDefaults

+ (void)initialize
{
	NSMutableDictionary *defaultValues = [NSMutableDictionary dictionary];
	[defaultValues setObject:[NSNumber numberWithInt:kDefaultVerticalLineLength]
                      forKey:kCommitMessageViewVerticalLineLength];
    [defaultValues setObject:[NSNumber numberWithBool:YES]
                      forKey:kCommitMessageViewHasVerticalLine];
	[defaultValues setObject:[NSNumber numberWithInt:kDefaultSplitVerticalLineLength]
					  forKey:kCommitMessageViewSplitVerticalLineLength];
	[defaultValues setObject:[NSNumber numberWithBool:NO]
					  forKey:kCommitMessageViewHasSplitVerticalLine];
	[defaultValues setObject:[NSNumber numberWithBool:YES]
			  forKey:kEnableGist];
	[defaultValues setObject:[NSNumber numberWithBool:YES]
			  forKey:kEnableGravatar];
	[defaultValues setObject:[NSNumber numberWithBool:YES]
			  forKey:kConfirmPublicGists];
	[defaultValues setObject:[NSNumber numberWithBool:NO]
			  forKey:kPublicGist];
	[defaultValues setObject:[NSNumber numberWithBool:YES]
			  forKey:kShowWhitespaceDifferences];
	[defaultValues setObject:[NSNumber numberWithBool:YES]
			  forKey:kOpenCurDirOnLaunch];
	[defaultValues setObject:[NSNumber numberWithBool:YES]
			  forKey:kShowOpenPanelOnLaunch];
	[defaultValues setObject:[NSNumber numberWithBool:YES]
					  forKey:kShouldCheckoutBranch];
	[defaultValues setObject:[NSNumber numberWithBool:NO]
                      forKey:kOpenPreviousDocumentsOnLaunch];
	[defaultValues setObject:[NSNumber numberWithInteger:kGitXBasicSeachMode]
                      forKey:kHistorySearchMode];
	[[NSUserDefaults standardUserDefaults] registerDefaults:defaultValues];
}

+ (int) commitMessageViewVerticalLineLength
{
	return [[NSUserDefaults standardUserDefaults] integerForKey:kCommitMessageViewVerticalLineLength];
}

+ (BOOL) commitMessageViewHasVerticalLine
{
	return [[NSUserDefaults standardUserDefaults] boolForKey:kCommitMessageViewHasVerticalLine];
}

+ (int) commitMessageViewSplitVerticalLineLength
{
	return [[NSUserDefaults standardUserDefaults] integerForKey:kCommitMessageViewSplitVerticalLineLength];
}

+ (BOOL) commitMessageViewHasSplitVerticalLine
{
	return [[NSUserDefaults standardUserDefaults] boolForKey:kCommitMessageViewHasSplitVerticalLine];
}

+ (BOOL) isGistEnabled
{
	return [[NSUserDefaults standardUserDefaults] boolForKey:kEnableGist];
}

+ (BOOL) isGravatarEnabled
{
	return [[NSUserDefaults standardUserDefaults] boolForKey:kEnableGravatar];
}

+ (BOOL) confirmPublicGists
{
	return [[NSUserDefaults standardUserDefaults] boolForKey:kConfirmPublicGists];
}

+ (BOOL) isGistPublic
{
	return [[NSUserDefaults standardUserDefaults] boolForKey:kPublicGist];
}

+ (BOOL)showWhitespaceDifferences
{
	return [[NSUserDefaults standardUserDefaults] boolForKey:kShowWhitespaceDifferences];
}

+ (BOOL)openCurDirOnLaunch
{
	return [[NSUserDefaults standardUserDefaults] boolForKey:kOpenCurDirOnLaunch];
}

+ (BOOL)showOpenPanelOnLaunch
{
	return [[NSUserDefaults standardUserDefaults] boolForKey:kShowOpenPanelOnLaunch];
}

+ (BOOL) shouldCheckoutBranch
{
	return [[NSUserDefaults standardUserDefaults] boolForKey:kShouldCheckoutBranch];
}

+ (void) setShouldCheckoutBranch:(BOOL)shouldCheckout
{
	[[NSUserDefaults standardUserDefaults] setBool:shouldCheckout forKey:kShouldCheckoutBranch];
}

+ (NSString *) recentCloneDestination
{
	return [[NSUserDefaults standardUserDefaults] stringForKey:kRecentCloneDestination];
}

+ (void) setRecentCloneDestination:(NSString *)path
{
	[[NSUserDefaults standardUserDefaults] setObject:path forKey:kRecentCloneDestination];
}

+ (BOOL) showStageView
{
	return [[NSUserDefaults standardUserDefaults] boolForKey:kShowStageView];
}

+ (void) setShowStageView:(BOOL)suppress
{
	return [[NSUserDefaults standardUserDefaults] setBool:suppress forKey:kShowStageView];
}

+ (BOOL) openPreviousDocumentsOnLaunch
{
	return [[NSUserDefaults standardUserDefaults] boolForKey:kOpenPreviousDocumentsOnLaunch];
}

+ (void) setPreviousDocumentPaths:(NSArray *)documentPaths
{
	[[NSUserDefaults standardUserDefaults] setObject:documentPaths forKey:kPreviousDocumentPaths];
}

+ (NSArray *) previousDocumentPaths
{
	return [[NSUserDefaults standardUserDefaults] arrayForKey:kPreviousDocumentPaths];
}

+ (void) removePreviousDocumentPaths
{
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:kPreviousDocumentPaths];
}
+ (NSInteger) branchFilter
{
	return [[NSUserDefaults standardUserDefaults] integerForKey:kBranchFilterState];
}

+ (void) setBranchFilter:(NSInteger)state
{
	[[NSUserDefaults standardUserDefaults] setInteger:state forKey:kBranchFilterState];
}

+ (NSInteger)historySearchMode
{
	return [[NSUserDefaults standardUserDefaults] integerForKey:kHistorySearchMode];
}

+ (void)setHistorySearchMode:(NSInteger)mode
{
	[[NSUserDefaults standardUserDefaults] setInteger:mode forKey:kHistorySearchMode];
}



// Suppressed Dialog Warnings
//
// Represents dialogs where the user has checked the "Do not show this message again" checkbox.
// Keep these together in an array to make it easier to reset all the warnings.

+ (NSSet *)suppressedDialogWarnings
{
	NSSet *suppressedDialogWarnings = [NSSet setWithArray:[[NSUserDefaults standardUserDefaults] arrayForKey:kSuppressedDialogWarnings]];
	if (suppressedDialogWarnings == nil)
		suppressedDialogWarnings = [NSSet set];

	return suppressedDialogWarnings;
}

+ (void)suppressDialogWarningForDialog:(NSString *)dialog
{
	NSSet *suppressedDialogWarnings = [[self suppressedDialogWarnings] setByAddingObject:dialog];

	[[NSUserDefaults standardUserDefaults] setObject:[suppressedDialogWarnings allObjects] forKey:kSuppressedDialogWarnings];
}

+ (BOOL)isDialogWarningSuppressedForDialog:(NSString *)dialog
{
	return [[self suppressedDialogWarnings] containsObject:dialog];
}

+ (void)resetAllDialogWarnings
{
	[[NSUserDefaults standardUserDefaults] setObject:nil forKey:kSuppressedDialogWarnings];
	[[NSUserDefaults standardUserDefaults] synchronize];
}


@end
