import 'dart:convert';

class Internship {
  final int id;
  final String title;
  final String employmentType;
  final ApplicationStatusMessage applicationStatusMessage;
  final String? jobTitle;
  final bool workFromHome;
  final String segment;
  final String? segmentLabelValue;
  final String? internshipTypeLabelValue;
  final List<String> jobSegments;
  final String companyName;
  final String companyUrl;
  final bool isPremium;
  final bool isPremiumInternship;
  final String employerName;
  final String companyLogo;
  final String type;
  final String url;
  final bool isInternChallenge;
  final bool isExternal;
  final bool isActive;
  final String expiresAt;
  final String closedAt;
  final String profileName;
  final bool partTime;
  final String startDate;
  final String duration;
  final Stipend stipend;
  final String? salary;
  final String? jobExperience;
  final String experience;
  final String postedOn;
  final int postedOnDateTime;
  final String applicationDeadline;
  final String expiringIn;
  final String postedByLabel;
  final String postedByLabelType;
  final List<String> locationNames;
  final List<Location> locations;
  final String startDateComparisonFormat;
  final String startDate1;
  final String startDate2;
  final bool isPpo;
  final bool isPpoSalaryDisclosed;
  final String? ppoSalary;
  final String? ppoSalary2;
  final String ppoLabelValue;
  final bool toShowExtraLabel;
  final String extraLabelValue;
  final bool isExtraLabelBlack;
  final List<String> campaignNames;
  final String campaignName;
  final bool toShowInSearch;
  final String campaignUrl;
  final int? campaignStartDateTime;
  final int? campaignLaunchDateTime;
  final int? campaignEarlyAccessStartDateTime;
  final int? campaignEndDateTime;
  final List<Label> labels;
  final String labelsApp;
  final List<String> labelsAppInCard;
  final bool isCovidWfhSelected;
  final bool toShowCardMessage;
  final String message;
  final bool isApplicationCappingEnabled;
  final String applicationCappingMessage;
  final List<dynamic> overrideMetaDetails;
  final bool eligibleForEasyApply;
  final bool eligibleForB2bApplyNow;
  final bool toShowB2bLabel;
  final bool isInternationalJob;
  final bool toShowCoverLetter;
  final String? officeDays;

  Internship({
    required this.id,
    required this.title,
    required this.employmentType,
    required this.applicationStatusMessage,
    this.jobTitle,
    required this.workFromHome,
    required this.segment,
    this.segmentLabelValue,
    this.internshipTypeLabelValue,
    required this.jobSegments,
    required this.companyName,
    required this.companyUrl,
    required this.isPremium,
    required this.isPremiumInternship,
    required this.employerName,
    required this.companyLogo,
    required this.type,
    required this.url,
    required this.isInternChallenge,
    required this.isExternal,
    required this.isActive,
    required this.expiresAt,
    required this.closedAt,
    required this.profileName,
    required this.partTime,
    required this.startDate,
    required this.duration,
    required this.stipend,
    this.salary,
    this.jobExperience,
    required this.experience,
    required this.postedOn,
    required this.postedOnDateTime,
    required this.applicationDeadline,
    required this.expiringIn,
    required this.postedByLabel,
    required this.postedByLabelType,
    required this.locationNames,
    required this.locations,
    required this.startDateComparisonFormat,
    required this.startDate1,
    required this.startDate2,
    required this.isPpo,
    required this.isPpoSalaryDisclosed,
    this.ppoSalary,
    this.ppoSalary2,
    required this.ppoLabelValue,
    required this.toShowExtraLabel,
    required this.extraLabelValue,
    required this.isExtraLabelBlack,
    required this.campaignNames,
    required this.campaignName,
    required this.toShowInSearch,
    required this.campaignUrl,
    this.campaignStartDateTime,
    this.campaignLaunchDateTime,
    this.campaignEarlyAccessStartDateTime,
    this.campaignEndDateTime,
    required this.labels,
    required this.labelsApp,
    required this.labelsAppInCard,
    required this.isCovidWfhSelected,
    required this.toShowCardMessage,
    required this.message,
    required this.isApplicationCappingEnabled,
    required this.applicationCappingMessage,
    required this.overrideMetaDetails,
    required this.eligibleForEasyApply,
    required this.eligibleForB2bApplyNow,
    required this.toShowB2bLabel,
    required this.isInternationalJob,
    required this.toShowCoverLetter,
    this.officeDays,
  });

  factory Internship.fromJson(Map<String, dynamic> json) {
    return Internship(
      id: json['id'],
      title: json['title'],
      employmentType: json['employment_type'],
      applicationStatusMessage:
          ApplicationStatusMessage.fromJson(json['application_status_message']),
      jobTitle: json['job_title'],
      workFromHome: json['work_from_home'],
      segment: json['segment'],
      segmentLabelValue: json['segment_label_value'],
      internshipTypeLabelValue: json['internship_type_label_value'],
      jobSegments: List<String>.from(json['job_segments']),
      companyName: json['company_name'],
      companyUrl: json['company_url'],
      isPremium: json['is_premium'],
      isPremiumInternship: json['is_premium_internship'],
      employerName: json['employer_name'],
      companyLogo: json['company_logo'],
      type: json['type'],
      url: json['url'],
      isInternChallenge: json['is_internchallenge'] == 1,
      isExternal: json['is_external'],
      isActive: json['is_active'],
      expiresAt: json['expires_at'],
      closedAt: json['closed_at'],
      profileName: json['profile_name'],
      partTime: json['part_time'],
      startDate: json['start_date'],
      duration: json['duration'],
      stipend: Stipend.fromJson(json['stipend']),
      salary: json['salary'],
      jobExperience: json['job_experience'],
      experience: json['experience'],
      postedOn: json['posted_on'],
      postedOnDateTime: json['postedOnDateTime'],
      applicationDeadline: json['application_deadline'],
      expiringIn: json['expiring_in'],
      postedByLabel: json['posted_by_label'],
      postedByLabelType: json['posted_by_label_type'],
      locationNames: List<String>.from(json['location_names']),
      locations: List<Location>.from(
          json['locations'].map((location) => Location.fromJson(location))),
      startDateComparisonFormat: json['start_date_comparison_format'],
      startDate1: json['start_date1'],
      startDate2: json['start_date2'],
      isPpo: json['is_ppo'],
      isPpoSalaryDisclosed: json['is_ppo_salary_disclosed'],
      ppoSalary: json['ppo_salary'],
      ppoSalary2: json['ppo_salary2'],
      ppoLabelValue: json['ppo_label_value'],
      toShowExtraLabel: json['to_show_extra_label'],
      extraLabelValue: json['extra_label_value'],
      isExtraLabelBlack: json['is_extra_label_black'],
      campaignNames: List<String>.from(json['campaign_names']),
      campaignName: json['campaign_name'],
      toShowInSearch: json['to_show_in_search'],
      campaignUrl: json['campaign_url'],
      campaignStartDateTime: json['campaign_start_date_time'],
      campaignLaunchDateTime: json['campaign_launch_date_time'],
      campaignEarlyAccessStartDateTime:
          json['campaign_early_access_start_date_time'],
      campaignEndDateTime: json['campaign_end_date_time'],
      labels: List<Label>.from(
          json['labels'].map((label) => Label.fromJson(label))),
      labelsApp: json['labels_app'],
      labelsAppInCard: List<String>.from(json['labels_app_in_card']),
      isCovidWfhSelected: json['is_covid_wfh_selected'],
      toShowCardMessage: json['to_show_card_message'],
      message: json['message'],
      isApplicationCappingEnabled: json['is_application_capping_enabled'],
      applicationCappingMessage: json['application_capping_message'],
      overrideMetaDetails: List<dynamic>.from(json['override_meta_details']),
      eligibleForEasyApply: json['eligible_for_easy_apply'],
      eligibleForB2bApplyNow: json['eligible_for_b2b_apply_now'],
      toShowB2bLabel: json['to_show_b2b_label'],
      isInternationalJob: json['is_international_job'],
      toShowCoverLetter: json['to_show_cover_letter'],
      officeDays: json['office_days'],
    );
  }
}

class ApplicationStatusMessage {
  final bool toShow;
  final String message;
  final String type;

  ApplicationStatusMessage({
    required this.toShow,
    required this.message,
    required this.type,
  });

  factory ApplicationStatusMessage.fromJson(Map<String, dynamic> json) {
    return ApplicationStatusMessage(
      toShow: json['to_show'],
      message: json['message'],
      type: json['type'],
    );
  }
}

class Stipend {
  final bool toShow;
  final String salary;
  final bool isSalaryDisclosed;
  final String? salaryV2;

  Stipend({
    required this.toShow,
    required this.salary,
    required this.isSalaryDisclosed,
    this.salaryV2,
  });

  factory Stipend.fromJson(Map<String, dynamic> json) {
    return Stipend(
      toShow: json['to_show'] ?? false,
      salary: json['salary'],
      isSalaryDisclosed: json['is_salary_disclosed'] ?? false,
      salaryV2: json['salary_v2'] ?? '',
    );
  }
}

class Location {
  final String? id;
  final String? locationName;
  final String string;
  final String? latitude;
  final String? longitude;
  final String? locality;
  final String? localityV1;
  final String? localityId;
  final String? state;
  final String? stateId;
  final String? cityId;
  final String? countryName;
  final String? countryCode;
  final bool? toShow;
  final bool? isNonHeadOffice;
  final bool? isRemoteLocation;

  Location({
    this.id,
    this.locationName,
    required this.string,
    this.latitude,
    this.longitude,
    this.locality,
    this.localityV1,
    this.localityId,
    this.state,
    this.stateId,
    this.cityId,
    this.countryName,
    this.countryCode,
    this.toShow,
    this.isNonHeadOffice,
    this.isRemoteLocation,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      id: json['id']?.toString(),
      locationName: json['location_name']?.toString(),
      string: json['string'],
      latitude: json['latitude']?.toString(),
      longitude: json['longitude']?.toString(),
      locality: json['locality']?.toString(),
      localityV1: json['locality_v1'],
      localityId: json['locality_id']?.toString(),
      state: json['state']?.toString(),
      stateId: json['state_id']?.toString(),
      cityId: json['city_id']?.toString(),
      countryName: json['country_name']?.toString(),
      countryCode: json['country_code']?.toString(),
      toShow: json['to_show'],
      isNonHeadOffice: json['is_non_head_office'],
      isRemoteLocation: json['is_remote_location'],
    );
  }
}

class Label {
  final String? label;
  final String? color;

  Label({
    this.label,
    this.color,
  });

  factory Label.fromJson(Map<String, dynamic> json) {
    return Label(
      label: json['label']?.toString(),
      color: json['color']?.toString(),
    );
  }
}

class InternshipsMeta {
  final List<Internship> internships;

  InternshipsMeta({required this.internships});

  factory InternshipsMeta.fromJson(Map<String, dynamic> json) {
    List<Internship> internshipsList = [];
    if (json['internships_meta'] != null) {
      json['internships_meta'].forEach((key, value) {
        internshipsList.add(Internship.fromJson(value));
      });
    }
    return InternshipsMeta(internships: internshipsList);
  }
}
