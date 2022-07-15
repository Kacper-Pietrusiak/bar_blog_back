import {Post} from "../types";
import {v4 as uuid} from 'uuid';
import {pool} from "../utils/db";
import {FieldPacket} from "mysql2";
import {ValidationError} from "../utils/error";

type PostRecordResults = [Post[], FieldPacket[]];

export class PostRecord implements Post{
    id: string;
    title: string;
    img: string;
    text: string;
    ingredients: string;
    createdAt: Date;


    constructor(obj: Post) {
        this.id = obj.id;
        this.title = obj.title;
        this.img = obj.img;
        this.text = obj.text;
        this.ingredients = obj.ingredients;
        this.createdAt = obj.createdAt;
    }

    static async getOne(id:string): Promise<PostRecord | null>{
        const [results] = await pool.execute("SELECT * FROM `posts` WHERE `id` = :id", {
            id,
        }) as PostRecordResults;

        return results.length === 0 ? null : new PostRecord(results[0])
    }

    static async getAll(): Promise<Post[]>{
        const [results] = await pool.execute('SELECT * FROM `posts`') as PostRecordResults;

        return results.map(obj => new PostRecord(obj));
    };

    async insert(): Promise<void>{
        try{
            if(!this.id){
                this.id = uuid()
            }
            if(!this.createdAt){
                this.createdAt = new Date()
            }

            await pool.execute('INSERT INTO `posts` VALUES(:id, :title, :img, :text, :ingredients, :createdAt )',this)
        }
        catch (e) {
            new ValidationError(e)
        }
    }

    static async delete(id: string): Promise<void>{
        try{
            await pool.execute('DELETE FROM `posts` WHERE `id` = :id', {
                id,
            })
        }
        catch (e) {
            new ValidationError(e)
        }
    }

    async edit(): Promise<void>{
        try{
            await pool.execute('UPDATE `posts` SET  `title`= :title, `img`= :img, `text`= :text, `ingredients`= :ingredients, `createdAt`= :createdAt WHERE `id`= :id', this)
        }
        catch (e) {
            new ValidationError(e)
        }
    }

}
