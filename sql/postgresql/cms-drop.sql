
SELECT acs_privilege__remove_child('cm_root', 'cm_admin');           -- Do anything
SELECT acs_privilege__remove_child('cm_admin', 'cm_relate');         -- Related/Child items
SELECT acs_privilege__remove_child('cm_relate', 'cm_write');         -- Modify the item
SELECT acs_privilege__remove_child('cm_write', 'cm_new');            -- Create subitems
SELECT acs_privilege__remove_child('cm_new', 'cm_examine');          -- View in admin mode
SELECT acs_privilege__remove_child('cm_examine', 'cm_read');         -- View in user mode
SELECT acs_privilege__remove_child('cm_admin', 'cm_item_workflow');  -- Change item workflow
SELECT acs_privilege__remove_child('cm_admin', 'cm_perm_admin');     -- Modify any permissions
SELECT acs_privilege__remove_child('cm_perm_admin', 'cm_perm');      -- Modify any permissions on an item
SELECT acs_privilege__remove_child('admin', 'cm_root');

SELECT acs_privilege__drop_privilege('cm_relate');
SELECT acs_privilege__drop_privilege('cm_write');
SELECT acs_privilege__drop_privilege('cm_new');
SELECT acs_privilege__drop_privilege('cm_examine');
SELECT acs_privilege__drop_privilege('cm_read');
SELECT acs_privilege__drop_privilege('cm_item_workflow');
SELECT acs_privilege__drop_privilege('cm_perm_admin');
SELECT acs_privilege__drop_privilege('cm_perm');
SELECT acs_privilege__drop_privilege('cm_root');
SELECT acs_privilege__drop_privilege('cm_admin');

drop function cm_form_widget__register_attribute_widget
drop function cms_permission__cm_admin_exists
drop function cms_permission__permission_p
drop function cm_form_widget__set_attribute_order
drop function cms_permission__grant_permission
drop function cms_permission__revoke_permission
drop function cm_form_widget__set_attribute_param_value
drop function cms_permission__has_grant_authority
drop function cms_permission__update_permissions
drop function cm_form_widget__unregister_attribute_widget
drop function cms_permission__has_revoke_authority

drop table cm_attribute_widget_params cascade;
drop table cm_attribute_widgets;
drop table cm_form_widget_params;
drop table cm_form_widgets;
drop table cm_content_methods cascade;
drop table cm_content_type_method_map;
drop table cm_modules;
drop view cm_form_widget_param_seq;

drop table v_items;
drop table v_perms;
drop function cm_form_widget__register_attribute_widget (varchar,varchar,varchar,boolean);
drop function cm_form_widget__set_attribute_order (varchar,varchar,integer);
drop function cm_form_widget__set_attribute_param_value (varchar,varchar,varchar,integer,varchar,varchar);
drop function cm_form_widget__set_attribute_param_value (varchar,varchar,varchar,varchar,varchar,varchar);
drop function cm_form_widget__unregister_attribute_widget (varchar,varchar);
drop function cms_permission__cm_admin_exists();
drop function cms_permission__grant_permission (integer,integer,varchar,integer,varchar);
drop function cms_permission__has_grant_authority (integer,integer,varchar);
drop function cms_permission__has_revoke_authority (integer,integer,varchar,integer);
drop function cms_permission__permission_p (integer,integer,varchar);
drop function cms_permission__revoke_permission (integer,integer,varchar,integer,varchar);
drop function cms_permission__update_permissions (integer,varchar);
drop function content_method__add_all_methods (varchar);
drop function content_method__add_method (varchar,varchar,boolean);
drop function content_method__get_method (varchar);
drop function content_method__is_mapped (varchar,varchar);
drop function content_method__remove_method (varchar,varchar);
drop function content_method__set_default_method (varchar,varchar);
drop function content_method__unset_default_method (varchar);
drop function content_module__get_label (integer);
drop function content_module__new (varchar,varchar,integer,integer,integer);
drop function content_module__new (varchar,varchar,varchar,integer,integer);
drop function content_module__new (varchar,varchar,varchar,integer,integer,integer,timestamptz,integer,varchar,varchar);
drop function content_permission__grant_permission (integer,integer,varchar,integer,varchar,varchar);
drop function content_permission__grant_permission_h (integer,integer,varchar);
drop function content_permission__has_grant_authority (integer,integer,varchar);
drop function content_permission__has_revoke_authority (integer,integer,varchar,integer);
drop function content_permission__inherit_permissions (integer,integer,integer);
drop function content_permission__permission_p (integer,integer,varchar);
drop function content_permission__revoke_permission (integer,integer,varchar,integer,varchar,varchar);
drop function content_permission__revoke_permission_h (integer,integer,varchar);
drop function content_workflow__approve (integer,integer,varchar,varchar);
drop function content_workflow__approve_string (integer,integer);
drop function content_workflow__can_approve (integer,integer);
drop function content_workflow__can_reject (integer,integer);
drop function content_workflow__can_start (integer,integer);
drop function content_workflow__can_touch (integer,integer);
drop function content_workflow__checkin (integer,integer,varchar,varchar);
drop function content_workflow__checkout (integer,timestamptz,integer,varchar,varchar);
drop function content_workflow__count_finished_tasks (integer);
drop function content_workflow__count_unfinished_tasks (integer);
drop function content_workflow__get_first_place();
drop function content_workflow__get_holding_user_name (integer);
drop function content_workflow__get_next_place (varchar);
drop function content_workflow__get_previous_place (varchar);
drop function content_workflow__get_status (integer,varchar);
drop function content_workflow__get_this_place (varchar);
drop function content_workflow__is_active (integer,varchar);
drop function content_workflow__is_checked_out (integer,varchar);
drop function content_workflow__is_checked_out (integer,varchar,integer);
drop function content_workflow__is_finished (integer,varchar);
drop function content_workflow__is_overdue (integer);
drop function content_workflow__is_overdue (integer,varchar);
drop function content_workflow__notify_of_checkout (integer,integer,integer,varchar);
drop function content_workflow__reject (integer,integer,varchar,varchar,varchar);
drop function content_workflow__unfinished_workflow_exists (integer);
drop function letter_placement (varchar);
drop function publishing_wf__is_next (integer,varchar,varchar,varchar,varchar,varchar);

drop TRIGGER cr_items_permission_tr on cr_items;
drop function cr_items_permission_tr ();

delete from acs_attributes where object_type = 'content_module';
delete from acs_objects where object_type = 'content_module';
delete from acs_object_types where object_type = 'content_module';
