import {Router} from "express";
import {PostRecord} from "../records/post.record";

export const postRouter = Router()

postRouter
    .get('/', async (req, res) => {
        const allDrinks = await PostRecord.getAll()

        res.json({
           allDrinks,
        });
    })