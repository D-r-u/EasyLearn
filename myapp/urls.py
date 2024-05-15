"""
URL configuration for EasyLearn project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path

from myapp import views

urlpatterns = [
    path('login/',views.login),
    path('login_post/',views.login_post),

    path('adm_logout/',views.adm_logout),

    path('adm_home/',views.adm_home),

    path('send_reply/<id>',views.adm_sendreply),
    path('send_reply_post/',views.adm_sendreply_post),

    path('apprvd_nd_rjctd_staff/',views.adm_app_rej_staff),
    path('apprvd_nd_rjctd_staff_post/',views.adm_app_rej_staff_post),

    path('rejected_staff/',views.adm_vw_rejected_staff),
    path('rejected_staff_post/',views.adm_vw_rejected_staff_post),

    path('Change_password/',views.adm_chngpasswd),
    path('Change_password_post/',views.adm_chngpasswd_post),

    path('view_apprve_rjct_staff/',views.adm_vw_apprej_staff),
    path('view_apprve_rjct_staff_post/',views.adm_vw_apprej_staff_post),

    path('view_complaints/',views.adm_vw_complaints),
    path('view_complaints_post/',views.adm_vw_complaints_post),

    path('view_complaints_staff/<id>', views.adm_vw_staffcomplaints),
    path('view_complaints_staff_post/', views.adm_vw_staffcomplaints_post),

    path('view_reviews/',views.adm_vw_review),
    path('view_reviews_post/',views.adm_vw_review_post),

    path('view_user/',views.adm_vw_user),
    path('view_user_post/',views.adm_vw_user_post),

    path('approve/<id>',views.approve_post),
    path('reject/<id>',views.reject_post),

    #======Staff===============
    path('stf_home/',views.stf_home),

    path('stf_add_questions/',views.stf_adquest),
    path('stf_add_questions_post/',views.stf_adquest_post),

    path('stf_add_test/',views.stf_addtest),
    path('stf_add_test_post/',views.stf_addtest_post),

    path('stf_appreview/',views.stf_appreview),
    path('stf_appreview_post/',views.stf_appreview_post),

    path('stf_change_passwd/',views.stf_changepswd),
    path('stf_change_passwd_post/',views.stf_changepswd_post),

    path('stf_delete_questions/<id>', views.stf_delete_questions),

    path('stf_delete_test/<id>', views.stf_delete_test),

    path('stf_edit_profile/',views.stf_edit_profile),
    path('stf_edit_profile_post/',views.stf_edit_profile_post),

    path('stf_edit_questions/<id>',views.stf_edit_questions),
    path('stf_edit_questions_post/',views.stf_edit_questions_post),

    path('stf_edit_test/<id>',views.stf_edit_test),
    path('stf_edit_test_post/',views.stf_edit_test_post),

    path('stf_file_upload/',views.stf_fileupload),
    path('stf_file_upload_post/',views.stf_fileupload_post),

    path('stf_manage_test/',views.stf_manage_test),
    path('stf_manage_test_post/',views.stf_manage_test_post),

    path('stf_manage_test_questions/',views.stf_manage_tq),
    path('stf_manage_test_questions_post/',views.stf_manage_tq_post),

    path('stf_send_complaints/',views.stf_send_complaints),
    path('stf_send_complaints_post/',views.stf_send_complaints_post),

    path('stf_sign_up/', views.stf_signup),
    path('stf_sign_up_post/', views.stf_signup_post),

    path('stf_view_profile/',views.stf_vw_profile),

    path('stf_view_reply/',views.stf_vw_reply),
    path('stf_view_reply_post/',views.stf_vw_reply_post),

    path('stf_view_test_results/<id>',views.stf_vw_testresult),
    path('stf_view_test_results_post/<id>',views.stf_vw_testresult_post),

    path('stf_voice/',views.stf_voice ),
    path('stf_voice_post/',views.stf_voice_post ),

    # ======User===============

    path('usr_home/', views.usr_home),

    path('usr_change_passwd/',views.usr_changepswd),
    path('usr_change_passwd_post/',views.usr_changepswd_post),


    path('usr_attend_test/',views.usr_attend_test),
    path('usr_attend_test_post/',views.usr_attend_test_post),

    path('usr_complaints_against_staff/',views.usr_complaints_agnst_stf),
    path('usr_complaints_against_staff_post/',views.usr_complaints_agnst_stf_post),

    path('usr_edit_profile/',views.usr_edit_profile),
    path('usr_edit_profile_post/',views.usr_edit_profile_post),

    path('usr_file_upload/',views.usr_file_upload),
    path('usr_file_upload_post/',views.usr_file_upload_post),


    path('usr_questions/',views.usr_questions ),
    path('usr_questions_post/',views.usr_questions_post),

    path('usr_send_complaints/',views.usr_send_complaints ),
    path('usr_send_complaints_post/',views.usr_send_complaints_post ),

    path('usr_send_reviews/',views.usr_send_reviews),
    path('usr_send_reviews_post/',views.usr_send_reviews_post),

    path('usr_sign_up/',views.usr_sign_up),
    path('usr_sign_up_post/',views.usr_sign_up_post),

    path('usr_view_profile/',views.usr_vw_profile ),

    path('usr_view_reply/', views.usr_vw_reply),
    path('usr_view_reply_post/', views.usr_vw_reply_post),

    path('usr_view_result/',views. usr_vw_result),
    path('usr_view_result_post/',views. usr_vw_result_post),

    path('usr_exam_center/<id>',views.usr_exam_center),
    path('usr_exam_center_post/',views.usr_exam_center_post),

    path('usr_voice/',views.usr_voice ),
    path('usr_voice_post/',views.usr_voice_post )


]
