using VAPView from '../db/schema/BARMER';
// service bas @(_requires: 'authenticated-user') 
@requires: 'authenticated-user'
service bas {
    entity Versicherte as projection on VAPView;
}